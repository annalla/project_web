const express = require('express');
const bcrypt = require('bcryptjs');

const userModel = require('../models/user.model');

const router = express.Router();

router.get('/login', async function (req, res) {
  res.render('vwAccount/login');
})

router.post('/login', async function (req, res) {
  const user = await userModel.singleByEmail(req.body.f_Email);
  
  const ret = bcrypt.compareSync(req.body.f_Password, user.f_Password);
  if (ret === false) {
    return res.render('vwAccount/login', {
      err_message: 'Email/Mật khẩu không đúng!'
    });
     
    //return res.render('vwAccount/login');
  }

  // req.session.isAuth = true;
  // req.session.authUser = user;

  //let url = req.session.retUrl || '/';
  //res.redirect('/login');

  res.render('home');
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
  console.log(user);
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


module.exports = router;