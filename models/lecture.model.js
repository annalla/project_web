const db = require('../utils/db');
const TBL_LECTURE = 'lectures';

module.exports = {
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
  }
};
