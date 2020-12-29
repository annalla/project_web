module.exports = function(app){
    app.get('/', function (req, res) {
        res.render('home');
      });
    app.use('/account', require('../routes/account.route'));
    app.use('/courses', require('../routes/course.route'));
    // app.use('/courses/aspect', require('../routes/course.route1'));
}
