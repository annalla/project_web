const db = require('../utils/db');

module.exports = {
  all() {
    return db.load('select * from courses c,aspects_level2 l2, aspects_level1 l1,users u,infor_teacher t where c.ID_aspect=l2.ID_aspect and l2.ID_aspect1=l1.ID_aspect1 and u.f_ID=c.TeacherID and u.f_ID=t.f_ID');
  },

  byCat1(catId) {
    return db.load(`select * from courses c,aspects_level2 l2, aspects_level1 l1,users u,infor_teacher t where  c.ID_aspect=l2.ID_aspect and l2.ID_aspect1 = l1.ID_aspect1  and  u.f_ID=c.TeacherID and u.f_ID=t.f_ID and l1.ID_aspect1=${catId} `);
  },
  byCat2(catId) {
    return db.load(`select * from courses c,aspects_level2 l2,users u,infor_teacher t, aspects_level1 l1 where  c.ID_aspect=${catId} and c.ID_aspect=l2.ID_aspect and l2.ID_aspect1 = l1.ID_aspect1 and u.f_ID=c.TeacherID and u.f_ID=t.f_ID `);
  },
  caterogy1(id){
    return db.load(`select * from aspects_level1 where ID_aspect1=${id}`);
  },
  caterogy2(id){
    return db.load(`select * from aspects_level2 l2,aspects_level1 l1 where l2.ID_aspect=${id} and l2.ID_aspect1=l1.ID_aspect1`);
  },

  // async single(id) {
  //   const rows = await db.load(`select * from products where ProID = ${id}`);
  //   if (rows.length === 0) {
  //     return null;
  //   }

  //   return rows[0];
  // },
};
