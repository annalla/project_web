module.exports = function authTeacher(req, res, next) {
    if (req.session.authUser.f_Type !== 1) {
      req.session.retUrl = req.originalUrl;
      return res.redirect('/account/login');
    }
    next();
  };