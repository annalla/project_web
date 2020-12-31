const db = require('../utils/db');

const TBL_CATEGORIES1 = 'aspects_level1';
const TBL_CATEGORIES2 = 'aspects_level2';

module.exports = {
   async all1() {
    return await db.load(`select * from aspects_level1`);
  },
  async all2() {
    return await db.load(`select * from ${TBL_CATEGORIES2}`);
  },
  async count1() {
    const rows= await db.load(`select count(*) as t from aspects_level1`);
    return rows[0].t;
  },
  ById2(id) {
    const sql = `
      select * 
      from ${TBL_CATEGORIES2} where ID_aspect1 = ${id}
    `;
    return db.load(sql);
  },
  ById1(id) {
    const sql = `
      select * 
      from ${TBL_CATEGORIES1} where ID_aspect1 = ${id}
    `;
    return db.load(sql);
  },
  
    // console.log(t[0].total);
    // const i=3;
    // const value
  // async single(id) {
  //   const rows = await db.load(`select * from ${TBL_CATEGORIES} where CatID = ${id}`);
  //   if (rows.length === 0)
  //     return null;

  //   return rows[0];
  // },

  add(entity) {
    return db.add(entity, TBL_CATEGORIES)
  },

  del(entity) {
    const condition = { CatID: entity.CatID };
    return db.del(condition, TBL_CATEGORIES);
  },

  patch(entity) {
    const condition = { CatID: entity.CatID };
    delete entity.CatID;
    return db.patch(entity, condition, TBL_CATEGORIES);
  }
};
