const db = require('../utils/db');
const TBL_STATUS = 'status_lecture';

module.exports = {
  add(entity) {
    return db.add(entity, TBL_STATUS);
  },
  patchStatus(entity,id) {
    const condition={ID_s:id};
    return db.patch(entity,condition, TBL_STATUS);
  },
  getLectureStatus(idCourse,idUser)
  {
    return db.load(`select * from lectures l,status_lecture s where l.CourseID=${idCourse} and l.ID_lect=s.ID_lect and s.f_ID=${idUser}`)
  }
};
