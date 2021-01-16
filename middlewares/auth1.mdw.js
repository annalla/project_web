module.exports = function auth(req, res, next) {
    if (req.session.isAuth === false) {
      req.session.retUrl = req.originalUrl;
      // console.log(req.session.retUrl);
      return res.redirect('/account/login');
    }
    next();
  };
  