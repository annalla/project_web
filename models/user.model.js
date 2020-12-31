const db = require('../utils/db');

const TBL_USERS = 'users';

module.exports = {
  all() {
    return db.load(`select * from ${TBL_USERS}`);
  },

  async single(id) {
    const rows = await db.load(`select * from ${TBL_USERS} where f_ID = ${id}`);
    if (rows.length === 0)
      return null;

    return rows[0];
  },
  async getIdUser(email) {
    const rows = await db.load(`select * from ${TBL_USERS} where f_Email = '${email}'`);
    if (rows.length === 0)
      return null;
    return rows[0].f_ID;
  },
  async singleByEmail(email) {
    const rows = await db.load(`select * from ${TBL_USERS} where f_Email = '${email}'`);
    if (rows.length === 0)
      return null;

    return rows[0];
  },
  async getTypeUser(email) {
    const rows = await db.load(`select * from ${TBL_USERS} where f_Email = '${email}'`);
    if (rows.length === 0)
      return null;
    return rows[0].f_Type;
  },
  async getPermissionUser(email) {
    const rows = await db.load(`select * from ${TBL_USERS} where f_Email = '${email}'`);
    if (rows.length === 0)
      return null;
    return rows[0].f_Permission;
  },
  add(entity) {
    return db.add(entity, TBL_USERS)
  },
};
