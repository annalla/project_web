const db = require('../utils/db');

const TBL_USERS = 'users';
const TBL_INFOR_TEACHER = "infor_teacher";

module.exports = {
  all() {
    return db.load(`select * from ${TBL_USERS}`);
  },
  
  allTeacher() {
    return db.load(`select * from ${TBL_USERS} where f_Type = '2' and isDisabled = '0'`);
  },
  allTeacherBlock() {
    return db.load(`select * from ${TBL_USERS} where f_Type = '2' and isDisabled = '1'`);
  },

  allStudent() {
    return db.load(`select * from ${TBL_USERS} where f_Type = '1' and isDisabled = '0'`);
  },

  allStudentBlock() {
    return db.load(`select * from ${TBL_USERS} where f_Type = '1' and isDisabled = '1'`);
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
  setBlock(isDisabled,id){
    return db.load(`UPDATE users SET isDisabled='${isDisabled}' WHERE f_ID='${id}'`);
  },
  
  del(entity) {
    const condition = { f_ID: entity};
    return db.del(condition, TBL_USERS);
  },
  updateOTP(otp,email){
    return db.load(`UPDATE users SET f_OTP='${otp}' WHERE f_Email='${email}'`);
  },

  async getOTP(email){
    const rows = await db.load(`select f_OTP from ${TBL_USERS} where f_Email = '${email}'`);
    return rows[0].f_OTP;
  },
  addInfo(entity) {
    return db.add(entity, TBL_INFOR_TEACHER);
  },
  async singleInfo(id)
  {
    const rows=await db.load(`select * from infor_teacher i, users u where i.f_ID=${id} and i.f_ID = u.f_ID`);
    return rows[0];
  },
};
