module.exports = function auth(req, res, next) {
  if (req.session.isAuth === false) {
    req.session.retUrl = req.originalUrl;
    // console.log(req.session.retUrl);
    return res.redirect('/account/login');
  }
  next();
};


// module.exports = function authUser(req, res, next) {
//   if (req.session.authType === 1) {
//     req.session.retUrl = req.originalUrl;
//     return res.redirect('/account/login');
//   }
//   next();
// };
// module.exports = function isYourTeacherCourse(req, res, next) {
//   if (req.session.isAdmin === false) {
//     req.session.retUrl = req.originalUrl;
//     return res.redirect('/account/login');
//   }
//   next();
// };
// module.exports = function isYourStudentCourse(req, res, next) {
//   if (req.session.isAdmin === true||req.session.isTeacher === true) {
//     req.session.retUrl = req.originalUrl;
//     return res.redirect('/account/login');
//   }
//   next();
// };