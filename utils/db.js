const mysql = require('mysql');
const util = require('util');

const pool = mysql.createPool({
  host: 'localhost',
  port: 3306,
  user: 'root',
  password: '',
  database: 'online_course',
  connectionLimit: 10,
});

const pool_query = util.promisify(pool.query).bind(pool);

module.exports = {
  load: sql => pool_query(sql),
  add: (entity, tableName) => pool_query(`insert into ${tableName} set ?`, entity),
  del: (condition, tableName) => pool_query(`delete from ${tableName} where ?`, condition),
  del2: (condition1,condition2, tableName) => pool_query(`delete from ${tableName} where ? and ?`, [condition1,condition2]),
  patch: (entity, condition, tableName) => pool_query(`update ${tableName} set ? where ?`, [entity, condition])
};
