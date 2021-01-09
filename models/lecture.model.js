const db = require('../utils/db');
const TBL_LECTURE = 'lectures';

module.exports = {
  add(entity) {
    console.log(entity);
    return db.add(entity, TBL_LECTURE);
  },
  async checkName(name,id)
  {
    const rows=await db.load(`select * from lectures where CourseID=${id} and title_name='${name}'`);
    return rows.length===0;
  },
  async getAll(idCourse)
  {
    return await db.load(`select * from lectures where CourseID=${idCourse}`);
  },
  async getLectureById(idLec)
  {
    return await db.load(`select * from lectures where ID_lect=${idLec}`);
  },
  getLectures(idCourse)
  {
    return db.load(`select * from ${TBL_LECTURE} where CourseID=${idCourse} and isIntro=0`);
  },
  getLectureIntro(idCourse)
  {
    return db.load(`select * from ${TBL_LECTURE} where CourseID=${idCourse} and isIntro=1`);
  },
  async countLecture(id){
    const rows= await db.load(`select count(*) as total from ${TBL_LECTURE} where CourseID=${id}`);
    return rows[0].total;
  }
};
