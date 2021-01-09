const db = require('../utils/db');
const config=require("../config/default.json");
const { relativeTimeRounding } = require('moment');
const TBL_COURSES = 'courses';
const TBL_COMMENT = 'comments';
const TBL_RATE = 'evaluate';
module.exports = {
  updateDate(entity,idcourse)
  {
    const condition={CourseID:idcourse};
    return db.patch(entity,condition,TBL_COURSES);
  },
  editFee(entity){
    const f=Number.parseFloat(entity.f_fee);
    let d=0;
    let t=f;
    if(entity.f_discount==='')
      d=0;
    else
    {
      d=Number.parseFloat(entity.f_discount);
      t=d;
    }
    const condition = { CourseID: +entity.id};
    const entity1={fee:f};
    const entity2={discount:d};
    const entity3={total:t};
    db.patch(entity1,condition,TBL_COURSES);
    db.patch(entity3,condition,TBL_COURSES);
    return db.patch(entity2,condition,TBL_COURSES);
  },
  editBrief(entity)
  {
    const entity1={brief:entity.FullDes};
    const condition={CourseID:+entity.id};
    return db.patch(entity1,condition,TBL_COURSES);
  },
  add(entity) {
    return db.add(entity,  TBL_COURSES);
  },
  addfinish(id) {
    const entity={status:1};
    const condition={CourseID:id}
    return db.patch(entity,condition,  TBL_COURSES);
  },
  async isExistNameCourse(name){
    const rows= await db.load(`select * from courses where title='${name}'`);
    return (rows.length!==0);
  },
  all() {
    return db.load(`select * from courses c,aspects_level2 l2, aspects_level1 l1,users u,infor_teacher t where c.ID_aspect=l2.ID_aspect and l2.ID_aspect1=l1.ID_aspect1 and u.f_ID=c.TeacherID and u.f_ID=t.f_ID`);
  },
  async find10NewCourse() {
    return await db.load(`select * from courses c,aspects_level2 l2, aspects_level1 l1,users u,infor_teacher t where c.ID_aspect=l2.ID_aspect and l2.ID_aspect1=l1.ID_aspect1 and u.f_ID=c.TeacherID and u.f_ID=t.f_ID
    ORDER by date DESC limit 10`);
  },
    pageByAll(offset) {
      return db.load(`select * from courses c,aspects_level2 l2, aspects_level1 l1,users u,infor_teacher t where c.ID_aspect=l2.ID_aspect and l2.ID_aspect1=l1.ID_aspect1 and u.f_ID=c.TeacherID and u.f_ID=t.f_ID limit ${config.pagination.limit} offset ${offset}`);
    },
    countPageByAll:async _=>{
    const rows=await db.load(`select count(*) as total from courses `);
    return rows[0].total;
    },
    pageByCat1(catId,offset) {
      return db.load(`select * from courses c,aspects_level2 l2, aspects_level1 l1,users u,infor_teacher t where  c.ID_aspect=l2.ID_aspect and l2.ID_aspect1 = l1.ID_aspect1  and  u.f_ID=c.TeacherID and u.f_ID=t.f_ID and l1.ID_aspect1=${catId} limit ${config.pagination.limit} offset ${offset}`);
    },
    countPageByCat1:async catId=>{
      const rows=await db.load(`select count(*) as total from courses c,aspects_level2 l2 where c.ID_aspect=l2.ID_aspect  and l2.ID_aspect1=${catId}`);
      return rows[0].total;
    },
    pageByCat2(catId,offset) {
      return db.load(`select * from courses c,aspects_level2 l2,users u,infor_teacher t, aspects_level1 l1 where  c.ID_aspect=${catId} and c.ID_aspect=l2.ID_aspect and l2.ID_aspect1 = l1.ID_aspect1 and u.f_ID=c.TeacherID and u.f_ID=t.f_ID limit ${config.pagination.limit} offset ${offset} `);
    },
    countPageByCat2:async catId=>{
      const rows=await db.load(`select count(*) as total from courses where ID_aspect=${catId}`);
      return rows[0].total;
    },
    caterogy1(id){
      return db.load(`select * from aspects_level1 where ID_aspect1=${id}`);
    },
    caterogy2(id){
      return db.load(`select * from aspects_level2 l2,aspects_level1 l1 where l2.ID_aspect=${id} and l2.ID_aspect1=l1.ID_aspect1`);
    },
    fulltextSearch(title){
      return db.load(`SELECT * FROM courses c,aspects_level2 l2, aspects_level1 l1,users u,infor_teacher t  WHERE MATCH( title) AGAINST( "${title}" ) and c.ID_aspect=l2.ID_aspect and l2.ID_aspect1=l1.ID_aspect1 and u.f_ID=c.TeacherID and u.f_ID=t.f_ID`);
    },
    async singleCoursebyTeacher(id)
    {
      return db.load(`select * from courses c, infor_teacher i where c.TeacherID=i.f_ID and c.TeacherID=${id} `);
    },
    addComment(entity) {
      return db.add(entity, TBL_COMMENT);
    },
    addRate(entity) {
      return db.add(entity, TBL_RATE);
    },
    filterByRankDownl1(catId,offset) {
      return db.load(`select * from courses c,aspects_level2 l2, aspects_level1 l1,users u,infor_teacher t where  c.ID_aspect=l2.ID_aspect and l2.ID_aspect1 = l1.ID_aspect1  and  u.f_ID=c.TeacherID and u.f_ID=t.f_ID and l1.ID_aspect1=${catId} ORDER BY evalue DESC limit ${config.pagination.limit} offset ${offset}`);
    },
    filterByRankUpl1(catId,offset) {
      return db.load(`select * from courses c,aspects_level2 l2, aspects_level1 l1,users u,infor_teacher t where  c.ID_aspect=l2.ID_aspect and l2.ID_aspect1 = l1.ID_aspect1  and  u.f_ID=c.TeacherID and u.f_ID=t.f_ID and l1.ID_aspect1=${catId} ORDER BY evalue ASC limit ${config.pagination.limit} offset ${offset}`);
    },
    filterByFeeDownl1(catId,offset) {
      return db.load(`select * from courses c,aspects_level2 l2, aspects_level1 l1,users u,infor_teacher t where  c.ID_aspect=l2.ID_aspect and l2.ID_aspect1 = l1.ID_aspect1  and  u.f_ID=c.TeacherID and u.f_ID=t.f_ID and l1.ID_aspect1=${catId} ORDER BY total DESC limit ${config.pagination.limit} offset ${offset}`);
    },
    filterByFeeUpl1(catId,offset) {
      return db.load(`select * from courses c,aspects_level2 l2, aspects_level1 l1,users u,infor_teacher t where  c.ID_aspect=l2.ID_aspect and l2.ID_aspect1 = l1.ID_aspect1  and  u.f_ID=c.TeacherID and u.f_ID=t.f_ID and l1.ID_aspect1=${catId} ORDER BY total ASC  limit ${config.pagination.limit} offset ${offset}`);
    },
    filterByRankDownl2(catId,offset){
      return db.load(`SELECT * FROM courses c,aspects_level2 l2, aspects_level1 l1,users u,infor_teacher t WHERE c.ID_aspect=${catId} c.ID_aspect=l2.ID_aspect and l2.ID_aspect1=l1.ID_aspect1 and u.f_ID=c.TeacherID and u.f_ID=t.f_ID ORDER BY evalue DESC limit ${config.pagination.limit} offset ${offset} `)
    },
    filterByRankUpl2(catId,offset){
      return db.load(`SELECT * FROM courses c,aspects_level2 l2, aspects_level1 l1,users u,infor_teacher t WHERE c.ID_aspect=${catId} c.ID_aspect=l2.ID_aspect and l2.ID_aspect1=l1.ID_aspect1 and u.f_ID=c.TeacherID and u.f_ID=t.f_ID ORDER BY evalue ASC limit ${config.pagination.limit} offset ${offset} `)
    },
    filterByFeeDownl2(catId,offset){
      return db.load(`SELECT * FROM courses c,aspects_level2 l2, aspects_level1 l1,users u,infor_teacher t WHERE c.ID_aspect=${catId} c.ID_aspect=l2.ID_aspect and l2.ID_aspect1=l1.ID_aspect1 and u.f_ID=c.TeacherID and u.f_ID=t.f_ID ORDER BY total DESC limit ${config.pagination.limit} offset ${offset} `)
    },
    filterByFeeUpl2(catId,offset){
      return db.load(`SELECT * FROM courses c,aspects_level2 l2, aspects_level1 l1,users u,infor_teacher t WHERE c.ID_aspect=${catId} c.ID_aspect=l2.ID_aspect and l2.ID_aspect1=l1.ID_aspect1 and u.f_ID=c.TeacherID and u.f_ID=t.f_ID ORDER BY total ASC limit ${config.pagination.limit} offset ${offset} `)
    },
    filterByFeeDown(offset){
      return db.load(`SELECT * FROM courses c,aspects_level2 l2, aspects_level1 l1,users u,infor_teacher t WHERE c.ID_aspect=l2.ID_aspect and l2.ID_aspect1=l1.ID_aspect1 and u.f_ID=c.TeacherID and u.f_ID=t.f_ID ORDER BY total DESC  limit ${config.pagination.limit} offset ${offset} `)
    },
    filterByFeeUp(offset){
      return db.load(`SELECT * FROM courses c,aspects_level2 l2, aspects_level1 l1,users u,infor_teacher t WHERE c.ID_aspect=l2.ID_aspect and l2.ID_aspect1=l1.ID_aspect1 and u.f_ID=c.TeacherID and u.f_ID=t.f_ID ORDER BY total ASC limit ${config.pagination.limit} offset ${offset} `)
    },
    filterByRankDown(offset){
      return db.load(`SELECT * FROM courses c,aspects_level2 l2, aspects_level1 l1,users u,infor_teacher t WHERE c.ID_aspect=l2.ID_aspect and l2.ID_aspect1=l1.ID_aspect1 and u.f_ID=c.TeacherID and u.f_ID=t.f_ID ORDER BY evalue DESC  limit ${config.pagination.limit} offset ${offset} `)
    },
    filterByRankUp(offset){
      return db.load(`SELECT * FROM courses c,aspects_level2 l2, aspects_level1 l1,users u,infor_teacher t WHERE c.ID_aspect=l2.ID_aspect and l2.ID_aspect1=l1.ID_aspect1 and u.f_ID=c.TeacherID and u.f_ID=t.f_ID ORDER BY evalue ASC limit ${config.pagination.limit} offset ${offset} `)
    },
    async single(id) {
      const rows = await db.load(`select * from courses c,aspects_level2 l2, aspects_level1 l1,users u,infor_teacher t where c.CourseID=${id} and c.ID_aspect=l2.ID_aspect and l2.ID_aspect1=l1.ID_aspect1 and u.f_ID=c.TeacherID and u.f_ID=t.f_ID`);
      if (rows.length === 0) {
        return null;
      }
      return rows[0];
    },
    async singleByIDlv1(id) {
      const rows = await db.load(`select * from courses c,aspects_level2 l2, aspects_level1 l1,users u,infor_teacher t where l1.ID_aspect1=${id} and c.ID_aspect=l2.ID_aspect and l2.ID_aspect1=l1.ID_aspect1 and u.f_ID=c.TeacherID and u.f_ID=t.f_ID`);
      if (rows.length === 0) {
        return null;
      }
      return rows[0];
    },
    async singleByIDlv2(id) {
      const rows = await db.load(`select * from courses c,aspects_level2 l2, aspects_level1 l1,users u,infor_teacher t where l2.ID_aspect=${id} and c.ID_aspect=l2.ID_aspect and l2.ID_aspect1=l1.ID_aspect1 and u.f_ID=c.TeacherID and u.f_ID=t.f_ID`);
      if (rows.length === 0) {
        return null;
      }
      return rows[0];
    },
    async getdateById(id) {
      const rows = await db.load(`select * from courses c,aspects_level2 l2, aspects_level1 l1,users u,infor_teacher t where c.CourseID=${id} and c.ID_aspect=l2.ID_aspect and l2.ID_aspect1=l1.ID_aspect1 and u.f_ID=c.TeacherID and u.f_ID=t.f_ID`);
      if (rows.length === 0) {
        return null;
      }
      return rows[0].date;
    },
    async get5course(id){
      const sum=await db.load(`select *,count(*) as total from courses c, courses c1 where c.CourseID=${id} and c.ID_aspect=c1.ID_aspect `);
      const s= sum[0].total;
      if(s<=5)
      {
        return db.load(`select distinct co.CourseID,co.title,u.f_Fullname,l11.name_level1,t.image,co.num_join,co.num_evalue,co.evalue,co.small_image,co.fee,co.discount from courses c,aspects_level1 l1,aspects_level2 l2, aspects_level2 le2,courses co,users u,infor_teacher t,aspects_level1 l11,aspects_level2 l22 where c.CourseID= ${id} and c.ID_aspect=l2.ID_aspect and l2.ID_aspect1=le2.ID_aspect1 and co.ID_aspect=le2.ID_aspect and co.CourseID!=${id} and co.ID_aspect=l22.ID_aspect and l22.ID_aspect1=l11.ID_aspect1 and co.TeacherID=u.f_ID and u.f_ID=t.f_ID order by co.num_join DESC limit 5 `);
      }
      return db.load(`select * from courses c,aspects_level1 l1,aspects_level2 l2, courses co,users u,infor_teacher t where c.CourseID= ${id} and c.ID_aspect=co.ID_aspect and co.CourseID!=${id} and co.TeacherID=u.f_ID and u.f_ID=t.f_ID and co.ID_aspect=l2.ID_aspect and l2.ID_aspect1=l1.ID_aspect1 order by co.num_join DESC limit 5`);
    },
    async singleCourse(id)
    {
      const rows=await db.load(`select * from courses where CourseID=${id} `);
      return rows[0];
    },
    Comment(id) {
      return db.load(`select * from comments cm, courses c,users u where c.CourseID=${id} and cm.CourseID=c.CourseID and u.f_ID=cm.f_ID`);
    },
    async getEvalue(id){
      const rows = await db.load(`select evalue from courses where CourseID=${id}`)
      return rows[0].evalue;
    },
    async getNum_evalue(id){
      const rows = await db.load(`select num_evalue from courses where CourseID=${id}`)
      return rows[0].num_evalue;
    },
    async countComment(id){
      const rows=await db.load(`select count(*) as total from comments cm, courses c,users u where c.CourseID=${id} and cm.CourseID=c.CourseID and u.f_ID=cm.f_ID`);
      return rows[0].total;
    },
    setnum_evalue(id,number){
      return db.load(`UPDATE courses SET num_evalue='${number}' WHERE CourseID='${id}'`);
    },
    Rate(id) {
      return db.load(`select * from evaluate e, courses c,users u where c.CourseID=${id} and e.CourseID=c.CourseID and u.f_ID=e.f_ID`);
    },
    async countRate(id){
      const rows=await db.load(`select count(*) as total from evaluate e, courses c,users u where c.CourseID=${id} and e.CourseID=c.CourseID and u.f_ID=e.f_ID`);
      return rows[0].total;
    },
    setEvalue(id,number){
      return db.load(`UPDATE courses SET evalue='${number}' WHERE CourseID='${id}'`);
    },
    del(entity) {
      const condition = { CourseID: entity};
      return db.del(condition, TBL_COURSES);
    },
    ById(id) {
      const sql = `
        select * 
        from courses where CourseID = ${id}
      `;
      return db.load(sql);
    },
    ByFullId(id) {
      const sql = `
      select * 
      from courses c,aspects_level2 l2, aspects_level1 l1,users u,infor_teacher t 
      where CourseID = ${id} and c.ID_aspect=l2.ID_aspect and l2.ID_aspect1=l1.ID_aspect1 and u.f_ID=c.TeacherID and u.f_ID=t.f_ID
      `;
      return db.load(sql);
    }
};
