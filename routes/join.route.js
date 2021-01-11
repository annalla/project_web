const express = require('express');
const moment = require('moment');
// const cartModel = require('../models/cart.model');
const courseModel = require('../models/course.model');
const joinModel = require('../models/join.model');
const lectureModel = require('../models/lecture.model');
// const orderDetailModel = require('../../models/order-detail.model');

const router = express.Router();

router.get('/', async function (req, res) {
    try{

    const rows=await joinModel.getMyCourse(req.session.authUser.f_ID);
    // console.log(rows);
  res.render('vwListCourse/myCourse', {
      course:rows
  });
    }catch (err) {
        console.error(err);
        res.send('View error log at server console.');
      }
})
router.get('/learn', async function (req, res) {
  const id=+req.query.id;
  const vd=+req.query.video||0;
    try{
      const rows= await lectureModel.getAll(id);
      const row=await courseModel.singleCourse(id);
      const rows2= await lectureModel.getLectureById(vd);
          res.render('vwListCourse/lecture', {
        course:row,
        lecture: rows,
        isNaN:vd==='NaN',
        unit:rows2,
  });
}catch (err) {
    console.error(err);
    res.send('View error log at server console.');
  };
});
router.post('/add',async function (req, res) {
    try{
    const id=+req.body.id;
    const course=await courseModel.singleCourse(id);
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
    var num=+course.num_join;
    num+=1;
    const entity={num_join:num};
    courseModel.updateDate(entity,course.CourseID);
    joinModel.add(detail);
  res.redirect(req.headers.referer);
}catch (err) {
    console.error(err);
    res.send('View error log at server console.');
  }
});

module.exports = router;