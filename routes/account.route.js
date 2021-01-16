const express = require('express');
const bcrypt = require('bcryptjs');
const nodemailer = require('nodemailer');
const userModel = require('../models/user.model');
const auth = require('../middlewares/auth.mdw');
const session = require('../middlewares/session.mdw');
const { setPassword, setEmail } = require('../models/user.model');


const router = express.Router();

router.get('/login', async function (req, res) {
  // if (req.headers.referer) {
  //   req.session.retUrl = ref;
  // }
  try {
    const ref = req.headers.referer;
    if (ref !== 'undefined') {
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
  try {
    const user = await userModel.singleByEmail(req.body.f_Email);
    if (user === null) {
      return res.render('vwAccount/login', {
        err_message: 'Email chưa được đăng ký!'
      });
    }
    const ret = bcrypt.compareSync(req.body.f_Password, user.f_Password);
    if (ret === false) {
      return res.render('vwAccount/login', {
        err_message: 'Email/Mật khẩu không đúng!'
      });
    }
    req.session.isAuth = true;
    req.session.authUser = user;
    if(req.session.authUser.isDisabled===1)
    {
      return res.render('vwAccount/login', {
        err_message: 'Tài khoản này đã bị khóa!'
      });
    }
    req.session.cart = [];
    if (+req.session.authUser.f_Permission === 1) {
      res.redirect('/admin/accounts');
    }
    else if (+req.session.authUser.f_Type === 2) {
      res.redirect('/account/profile');
    }
    else {
      if (user.f_OTP === "0") {
        req.session.isAuth = true;
        let url = req.session.retUrl || '/';
        if (req.session.retUrl === 'http://localhost:3000/account/sendotp') {
          url = '/';
        }
        if (req.session.retUrl === 'http://localhost:3000/account/login') {
          url = '/';
        }
        if (req.session.retUrl === 'http://localhost:3000/account/register') {
          url = '/';
        }
         res.redirect(url);
      } else {
        req.session.isAuth = false;
        res.render('vwAccount/otp');
        return;
        //res.redirect('/account/sendotp');
      }
    }
  }
  catch (err) {
    console.error(err);
    res.send('View error log at server console.');
  }
})

router.post('/logout', async function (req, res) {
  try {
    req.session.isAuth = false;
    req.session.authUser = null;
    req.session.cart = [];
    res.redirect(req.headers.referer);
  } catch (err) {
    console.error(err);
    res.send('View error log at server console.');
  }
})

router.get('/register', async function (req, res) {
  try {
    res.render('vwAccount/register');
  } catch (err) {
    console.error(err);
    res.send('View error log at server console.');
  }
})

// router.post('/register', async function (req, res) {
//   try{
//   const hash = bcrypt.hashSync(req.body.f_Password, 10);
//   // console.log(hash);
//   const user = {

//     f_Password: hash,
//     f_Fullname: req.body.f_Fullname,
//     f_Email: req.body.f_Email,
//     f_Permission: 0,
//     f_Type: 1
//   }
//   await userModel.add(user);
//   // res.render('vwAccount/register');
//   res.render('home');
// }catch (err) {
//   console.error(err);
//   res.send('View error log at server console.');
// }
// })

//kiểm tra tài khoản có sẵn qua email
router.get('/is-available', async function (req, res) {
  try {
    const email = req.query.user;
    const user = await userModel.singleByEmail(email);
    if (user === null) {
      return res.json(true);
    }

    res.json(false);
  } catch (err) {
    console.error(err);
    res.send('View error log at server console.');
  }
});

router.post('/sendOTP', async function (req, res) {
  try {
    function generateOTP() {
      // Declare a string variable  
      // which stores all string 
      var string = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
      let OTP = '';
      // Find the length of string 
      var len = string.length;
      for (let i = 0; i < 6; i++) {
        OTP += string[Math.floor(Math.random() * len)];
      }
      return OTP;
    }

    var transporter = nodemailer.createTransport({
      service: 'gmail',
      auth: {
        user: 'ptbtram220500@gmail.com',
        pass: 'trampham1942000@'
      }
    });
    otp = generateOTP();
    let mailOptions = {
      from: 'ptbtram220500@gmail.com',
      to: req.body.f_Email,
      subject: 'XÁC THỰC TÀI KHOẢN EDU',
      text: 'Mã OTP của bạn là: ',
      html: otp
    };
    const hash = bcrypt.hashSync(req.body.f_Password, 10);
    const user = {
      f_Password: hash,
      f_Fullname: req.body.f_Fullname,
      f_Email: req.body.f_Email,
      f_Permission: 0,
      f_Type: 1,
      f_OTP: otp,
      isDisabled:0
    }
    await userModel.add(user);
    transporter.sendMail(mailOptions, function (error, info) {
      if (error) {
        console.log(error);
      } else {
        // console.log('Email sent: ' + info.response);
      }
    });
    res.render('vwAccount/otp')
  } catch (err) {
    console.error(err);
    res.send('View error log at server console.');
  }
})

router.post('/checkOTP', async function (req, res) {
  try {
    const otp = await userModel.getOTP(req.body.f_Email);
    if (otp != req.body.OTP) {
      return res.render('vwAccount/otp', {
        err_message: 'OTP/email không đúng!'
      });
    }
    else {
      userModel.updateOTP('0', req.body.f_Email);
      res.redirect('/');
    }
  } catch (err) {
    console.error(err);
    res.send('View error log at server console.');
  }
}),

  router.get('/profile', auth, async function (req, res) {
    try {
      const rows= await userModel.singleInfo(req.session.authUser.f_ID);
      res.render('vwAccount/profile', {
        infor : rows,
    });
    } catch (err) {
      console.error(err);
      res.send('View error log at server console.');
    }
  })

router.post('/profile', auth, async function (req, res) {
  try {
    const id = req.session.authUser.f_ID;
    if (req.body.f_Email != null) {
      await userModel.setEmail(req.body.f_Email, id);
    }
    else if (req.body.f_Fullname != null) {
      await userModel.setName(req.body.f_Fullname, id);
    }
    else if (req.body.f_Password != null && req.body.new_Password != null) {
      const ret = bcrypt.compareSync(req.body.f_Password, req.session.authUser.f_Password);
      if (ret === false) {
        return res.render('vwAccount/profile', {
          err_message: 'Mật khẩu không đúng!'
        });
      }
      const hash = bcrypt.hashSync(req.body.new_Password, 10);
      await userModel.setPassword(hash, id);
    }
    // res.render('vwAccount/profile');
    req.session.isAuth = false;
    req.session.authUser = null;
    req.session.id = null;
    req.session.permission = 0;
    req.session.teacher = 0;
    res.redirect(req.headers.referer);
  } catch (err) {
    console.error(err);
    res.send('View error log at server console.');
  }
})

router.get('/checkPassword', async function (req, res) {
  try {
    const password = req.query.Password;
    const ret = bcrypt.compareSync(password, req.session.authUser.f_Password);
    if (ret === false) {
      return res.json(false);
    }
    res.json(true);
  } catch (err) {
    console.error(err);
    res.send('View error log at server console.');
  }
})
module.exports = router;