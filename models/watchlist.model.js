const db = require('../utils/db');
const TBL_WATCHLIST = 'watchlists';

module.exports = {
  add(entity) {
    return db.add(entity,  TBL_WATCHLIST);
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
  },
  delData(id,user) {
    const condition1 = { CourseID:id };
    const condition2 = { f_ID:user };
  return db.del2(condition1,condition2,  TBL_WATCHLIST);
  },
};
