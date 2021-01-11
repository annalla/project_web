const auth = require('../middlewares/auth.mdw');
module.exports = function (app) {
  app.use('/', require('../routes/home.route'));
  app.use('/account', require('../routes/account.route'));
  app.use('/courses', require('../routes/course.route'));

  app.use('/yourCart', auth, require('../routes/cart.route'));
  app.use('/myCourse', auth, require('../routes/join.route'));
  app.use('/myFavoriteCourse', auth, require('../routes/watchlist.route'));

  app.use('/admin', require('../routes/admin.route'));
  app.use('/teacher', auth, require('../routes/teacher.route'));
}
