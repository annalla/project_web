const express = require('express');
const moment = require('moment');
// const cartModel = require('../models/cart.model');
const courseModel = require('../models/course.model');
const joinModel = require('../models/join.model');
// const orderDetailModel = require('../../models/order-detail.model');

const router = express.Router();

router.get('/', async function (req, res) {

    const rows=await joinModel.getMyCourse(req.session.authUser.f_ID);
    // console.log(rows);
  res.render('vwListCourse/myCourse', {
      course:rows
  });
})

router.post('/add', function (req, res) {
    const id=+req.body.id;
    const course=courseModel.singleCourse(id);
    let total=0;
    if(course.discount){
        total=course.discount;
    }
    else{
        total=course.fee;
    }
    const detail=
    {
        CourseID:id,
        orderDate: moment().format('YYYY-MM-DD HH:mm:ss'),
        f_ID: req.session.authUser.f_ID,
        status: 0,
        price: total,
    };
    // console.log(detail);
    joinModel.add(detail);
  res.redirect(req.headers.referer);
});

module.exports = router;