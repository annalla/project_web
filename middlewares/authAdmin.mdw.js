module.exports = function authAdmin(req, res, next) {
  if (req.session.authUser.f_Permission !== 1) {
    req.session.retUrl = req.originalUrl;
    return res.redirect('/account/login');
  }
  next();
};