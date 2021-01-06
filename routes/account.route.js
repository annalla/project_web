const express = require('express');
const bcrypt = require('bcryptjs');

const userModel = require('../models/user.model');
const auth = require('../middlewares/auth.mdw');
const session = require('../middlewares/session.mdw');
const { setPassword, setEmail } = require('../models/user.model');


const router = express.Router();

router.get('/login', async function (req, res) {
  // if (req.headers.referer) {
  //   req.session.retUrl = ref;
  // }
  try{
    const ref = req.headers.referer;
      if(ref!=='undefined')
      {
        req.session.retUrl = ref;
      }
      res.render('vwAccount/login');

  }
  catch (err) {
    console.error(err);
    res.send('View error log at server console.');
  }
  
})

router.post('/login', async function (req, res) {
  try{
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
    res.redirect('/admin/accounts');
  }
  else if(+type===2)
  {
    res.redirect('/account/profile');
  }
  else
  {
    let url = req.session.retUrl || '/';
  res.redirect(url);
  }
}
catch (err) {
  console.error(err);
  res.send('View error log at server console.');
}
})

router.post('/logout', async function (req, res) {
  try{
  req.session.isAuth = false;
  req.session.authUser = null;
  req.session.id = null;
  req.session.permission = 0;
  req.session.teacher = 0;
  req.session.cart=[];
  res.redirect(req.headers.referer);
  }catch (err) {
    console.error(err);
    res.send('View error log at server console.');
  }
})

router.get('/register', async function (req, res) {
  try{
  res.render('vwAccount/register');
  }catch (err) {
    console.error(err);
    res.send('View error log at server console.');
  }
})

router.post('/register', async function (req, res) {
  try{
  const hash = bcrypt.hashSync(req.body.f_Password, 10);
  // console.log(hash);
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
}catch (err) {
  console.error(err);
  res.send('View error log at server console.');
}
})

//kiểm tra tài khoản có sẵn qua email
router.get('/is-available', async function (req, res) {
  try{
  const email = req.query.user;
  const user = await userModel.singleByEmail(email);
  if (user === null) {
    return res.json(true);
  }

  res.json(false);
}catch (err) {
  console.error(err);
  res.send('View error log at server console.');
}
})

router.get('/profile', auth, async function (req, res) {
  try{
  res.render('vwAccount/profile');
  }catch (err) {
    console.error(err);
    res.send('View error log at server console.');
  }
})

router.post('/profile',auth,async function(req,res){
  try{
  const id=req.session.authUser.f_ID;
  if(req.body.f_Email != null){
    await userModel.setEmail(req.body.f_Email,id);
  }
  else if(req.body.f_Fullname != null){
    await userModel.setName(req.body.f_Fullname,id);
  }
  else if(req.body.f_Password != null && req.body.new_Password != null){
    const ret = bcrypt.compareSync(req.body.f_Password, req.session.authUser.f_Password);
    if (ret === false) {
      return res.render('vwAccount/profile', {
        err_message: 'Mật khẩu không đúng!'
      });
    }
    const hash = bcrypt.hashSync(req.body.new_Password, 10);
    await userModel.setPassword(hash,id);
  }
  // res.render('vwAccount/profile');
  req.session.isAuth = false;
  req.session.authUser = null;
  req.session.id = null;
  req.session.permission = 0;
  req.session.teacher = 0;
  res.redirect(req.headers.referer);
}catch (err) {
  console.error(err);
  res.send('View error log at server console.');
}
})

router.get('/checkPassword', async function (req, res) {
  try{
  const password = req.query.Password;
  const ret = bcrypt.compareSync(password, req.session.authUser.f_Password);
  if (ret === false) {
    return res.json(false);
  }
  res.json(true);
}catch (err) {
  console.error(err);
  res.send('View error log at server console.');
}
})
module.exports = router;