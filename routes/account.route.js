const express = require('express');
const bcrypt = require('bcryptjs');

const userModel = require('../models/user.model');
const auth = require('../middlewares/auth.mdw');
const session = require('../middlewares/session.mdw');


const router = express.Router();

router.get('/login', async function (req, res) {
  // if (req.headers.referer) {
  //   req.session.retUrl = ref;
  // }
  const ref = req.headers.referer;
  if(ref!=='undefined')
  {
    req.session.retUrl = ref;
  }
  

  res.render('vwAccount/login');
})

router.post('/login', async function (req, res) {
  const user = await userModel.singleByEmail(req.body.f_Email);
  const id=await userModel.getIdUser(req.body.f_Email);
  const type=await userModel.getTypeUser(req.body.f_Email);
  const permission=await userModel.getPermissionUser(req.body.f_Email);
  const ret = bcrypt.compareSync(req.body.f_Password, user.f_Password);
  if (ret === false) {
    return res.render('vwAccount/login', {
      err_message: 'Email/Mật khẩu không đúng!'
    });
  }

  req.session.isAuth = true;
  req.session.authUser = user;
  req.session.authId = id;
  req.session.authPermission = permission;
  req.session.authType = type;
  req.session.cart=[];
  if(+permission===1)
  {
    res.redirect('/admin');
  }
  else if(+type===2)
  {
    res.redirect('/teacher');
  }
  else
  {
    let url = req.session.retUrl || '/';
  res.redirect(url);
  }
  
})

router.post('/logout', async function (req, res) {
  req.session.isAuth = false;
  req.session.authUser = null;
  req.session.id = null;
  req.session.permission = 0;
  req.session.teacher = 0;
  req.session.cart=[];
  res.redirect(req.headers.referer);
})

router.get('/register', async function (req, res) {
  res.render('vwAccount/register');
})

router.post('/register', async function (req, res) {
  const hash = bcrypt.hashSync(req.body.f_Password, 10);
  console.log(hash);
  const user = {
    
    f_Password: hash,
    f_Fullname: req.body.f_Fullname,
    f_Email: req.body.f_Email,
    f_Permission: 0,
    f_Type: 1
  }
  await userModel.add(user);
  // res.render('vwAccount/register');
  res.render('home');
})

//kiểm tra tài khoản có sẵn qua email
router.get('/is-available', async function (req, res) {
  const email = req.query.user;
  const user = await userModel.singleByEmail(email);
  if (user === null) {
    return res.json(true);
  }

  res.json(false);
})

router.get('/profile', auth, async function (req, res) {
  res.render('vwAccount/profile');
})
//

module.exports = router;