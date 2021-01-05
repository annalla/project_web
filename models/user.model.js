const db = require('../utils/db');

const TBL_USERS = 'users';

module.exports = {
  all() {
    return db.load(`select * from ${TBL_USERS}`);
  },
  
  allTeacher() {
    return db.load(`select * from ${TBL_USERS} where f_Type = '2'`);
  },

  allStudent() {
    return db.load(`select * from ${TBL_USERS} where f_Type = '1'`);
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
  setEmail(f_Email,id){
    return db.load(`UPDATE users SET f_Email='${f_Email}' WHERE f_ID='${id}'`);
  },
  setName(f_Fullname,id){
    return db.load(`UPDATE users SET f_Fullname='${f_Fullname}' WHERE f_ID='${id}'`);
  },
  setPassword(f_Password,id){
    return db.load(`UPDATE users SET f_Password='${f_Password}' WHERE f_ID='${id}'`);
  },
  del(entity) {
    const condition = { f_ID: entity};
    return db.del(condition, TBL_USERS);
  }
};
