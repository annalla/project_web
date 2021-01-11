const express = require('express');
const moment = require('moment');
const cartModel = require('../models/cart.model');
const courseModel = require('../models/course.model');
const joinModel = require('../models/join.model');
const statusModel = require('../models/status.model');
const lectureModel = require('../models/lecture.model');

const router = express.Router();

router.get('/', async function (req, res) {
  try{
    const items = [];
   var total=0;
  for (const ci of req.session.cart) {
    const course = await courseModel.singleCourse(ci.Courseid);
    if(course.discount)
    {
      items.push({
        ...ci,
        course,
        amount: course.discount
      })
      total=total+course.discount;
    }
    else{
      items.push({
        ...ci,
        course,
        amount: course.fee
      })
      total=total+course.fee;
    }
  }
  res.render('vwListCourse/myCart', {
    items,
    empty: req.session.cart.length === 0,
    sum:Math.round(total * 100) / 100
  });
}catch (err) {
  console.error(err);
  res.send('View error log at server console.');
}
})

router.post('/add', function (req, res) {
  try{
  const items={
    Courseid: +req.body.id,
  };
  const detail=
  {
    f_ID: req.session.authUser.f_ID,
    CourseID:items.Courseid
  };
  cartModel.addData(detail,items,req.session.cart)
  cartModel.add(req.session.cart, items);
  res.redirect(req.headers.referer);
}catch (err) {
  console.error(err);
  res.send('View error log at server console.');
}
});
router.get('/checkAdd', function (req, res) {
  try{
    const items={
      Courseid: +req.query.id,
    } 
    if (cartModel.checkAdd(req.session.cart, items))
    {
        res.json(true);
    }
    else
    {  
        res.json(false);
    }
  }catch (err) {
    console.error(err);
    res.send('View error log at server console.');
  }
  });

router.post('/remove', function (req, res) {
  cartModel.del(req.session.cart, +req.body.id);
  cartModel.delData(+req.body.id,req.session.authUser.f_ID);
  res.redirect(req.headers.referer);
});

router.post('/checkout', async function (req, res) {
  const details = [];
  let total = 0;
  for (const ci of req.session.cart) {
    const course = await courseModel.singleCourse(ci.Courseid);
    var num=+course.num_join;
    num+=1;
    const entity={num_join:num};
    courseModel.updateDate(entity,course.CourseID);
    const lect=await lectureModel.getAll(course.CourseID);
    const statuss=[];
    for(var i=0;i<lect.length;i++)
    {
      const status={
        f_ID: req.session.authUser.f_ID,
        ID_lect:lect[i].ID_lect,
        status:0,
      }
      statuss.push(status);
    }
    for(const s of statuss)
    {
      statusModel.add(s);
    }
    if(course.discount)
    {
      total = course.discount;
    }
    else
    {
      total = course.fee;
    }
    details.push({
      orderDate: moment().format('YYYY-MM-DD HH:mm:ss'),
      f_ID: req.session.authUser.f_ID,
      status: 0,
      price: total,
      CourseID: ci.Courseid
    });
  }
  for (const detail of details) {
    await joinModel.add(detail);
  }
  for(ci of req.session.cart)
  {
    cartModel.delData(ci.Courseid,req.session.authUser.f_ID);
  }
  req.session.cart = [];
  res.redirect(req.headers.referer);
});

module.exports = router;