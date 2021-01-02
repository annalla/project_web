const db = require('../utils/db');
const TBL_ORDERDETAILS = 'watchlists';

module.exports = {
  add(entity) {
    return db.add(entity, TBL_ORDERDETAILS);
  },
   async isWatchList(userid,idCourse)
  {
      const rows= await db.load(`select * from watchlists where f_ID=${userid} and CourseID=${idCourse}`);
      if(rows.length===0)
      {
        return false;
      }
      
      return true;
  },
  getMyCourse(idUser){
    return db.load(`select c.* from courses c,watchlists j where  j.f_ID=${idUser} and j.CourseID=c.CourseID`);
  }
};
