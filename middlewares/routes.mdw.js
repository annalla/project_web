const auth = require('../middlewares/auth.mdw');
const authUser = require('../middlewares/authUser.mdw');
const authTeacher = require('../middlewares/authTeacher.mdw');
const authAdmin = require('../middlewares/authAdmin.mdw');
module.exports = function (app) {
  app.use('/', require('../routes/home.route'));
  app.use('/account', require('../routes/account.route'));
  app.use('/courses', require('../routes/course.route'));

  app.use('/yourCart', auth, authUser,require('../routes/cart.route'));
  app.use('/myCourse', auth,authUser, require('../routes/join.route'));
  app.use('/myFavoriteCourse', auth,authUser,  require('../routes/watchlist.route'));

  app.use('/admin',auth,authAdmin, require('../routes/admin.route'));
  app.use('/teacher', auth,authTeacher, require('../routes/teacher.route'));
}
