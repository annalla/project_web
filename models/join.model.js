const db = require('../utils/db');
const { relativeTimeRounding } = require('moment');

const TBL_ORDERDETAILS = 'course_join';

module.exports = {
  add(entity) {
    return db.add(entity, TBL_ORDERDETAILS);
  },
  async isJoin(userid,idCourse)
  {
      const rows= await db.load(`select * from course_join where f_ID=${userid} and CourseID=${idCourse}`);
      if(rows.length===0)
      {
        return false;
      }
      
      return true;
  },
  getMyCourse(idUser){
    return db.load(`select c.* from courses c,course_join j where  j.f_ID=${idUser} and j.CourseID=c.CourseID`);
  }
};
