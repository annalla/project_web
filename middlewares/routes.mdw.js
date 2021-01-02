const auth = require('../middlewares/auth.mdw');
module.exports = function(app){
    app.get('/', function (req, res) {
        res.render('home');
      });
    app.use('/account', require('../routes/account.route'));
    app.use('/courses', require('../routes/course.route'));
    // app.use('/account/yourCourse', require('../routes/yourCourse.route'));
    app.use('/yourCart', auth,require('../routes/cart.route'));
    app.use('/myCourse', auth,require('../routes/join.route'));
    app.use('/myFavoriteCourse', auth,require('../routes/watchlist.route'));
}
