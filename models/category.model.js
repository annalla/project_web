const db = require('../utils/db');

const TBL_CATEGORIES1 = 'aspects_level1';
const TBL_CATEGORIES2 = 'aspects_level2';

module.exports = {
  async all() {
    return await db.load(`select ID_aspect1, ID_aspect, name_level1 as name
                        from aspects_level1
                        union
                        select ID_aspect1, ID_aspect, name_level2 as name
                        from aspects_level2
                        order by ID_aspect1, ID_aspect`);
  },
  
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

  async single(id) {
    const rows = await db.load(`select * from ${TBL_CATEGORIES1} where ID_aspect1 = ${id}`);
    if (rows.length === 0)
      return null;

    return rows[0];
  },

  async singlelv2(id) {
    const rows = await db.load(`select * from ${TBL_CATEGORIES2} where ID_aspect = ${id}`);
    if (rows.length === 0)
      return null;

    return rows[0];
  },
  
  add(entity) {
    return db.add(entity, TBL_CATEGORIES1)
  },

  addlv2(entity) {
    return db.add(entity, TBL_CATEGORIES2)
  },

  del(entity) {
    const condition = { ID_aspect1: entity.ID_aspect1 };
    return db.del(condition, TBL_CATEGORIES1);
  },

  dellv2(entity) {
    const condition = { ID_aspect: entity.ID_aspect };
    return db.del(condition, TBL_CATEGORIES2);
  },


  patch(entity) {
    const condition = { ID_aspect1: entity.ID_aspect1 };
    delete entity.ID_aspect1;
    return db.patch(entity, condition, TBL_CATEGORIES1);
  },

  patchlv2(entity) {
    const condition = { ID_aspect: entity.ID_aspect };
    delete entity.ID_aspect;
    return db.patch(entity, condition, TBL_CATEGORIES2);
  }
};
