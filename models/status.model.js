const db = require('../utils/db');
const TBL_STATUS = 'status_lecture';

module.exports = {
  add(entity) {
    return db.add(entity, TBL_STATUS);
  },
  patchStatus(entity,id) {
    const condition={ID_s:id};
    return db.patch(entity,condition, TBL_STATUS);
  }
};
