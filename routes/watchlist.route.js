const express = require('express');
// const moment = require('moment');
// const cartModel = require('../models/cart.model');
const courseModel = require('../models/course.model');
const watchlistModel = require('../models/watchlist.model');
// const orderDetailModel = require('../../models/order-detail.model');

const router = express.Router();

router.get('/', async function (req, res) {
  try{
    const rows=await watchlistModel.getMyCourse(req.session.authUser.f_ID);
    // console.log(rows);
     res.render('vwListCourse/myFavoriteCourse', {
      course:rows
  });
  }catch (err) {
    console.error(err);
    res.send('View error log at server console.');
  }
})

router.post('/add', async function (req, res) {
  try{
    const id=+req.body.id;
    const detail=
    {
        CourseID:id,
        f_ID: req.session.authUser.f_ID,
    };
    watchlistModel.add(detail);
  res.redirect(req.headers.referer);
  }catch (err) {
    console.error(err);
    res.send('View error log at server console.');
  }
});
router.get('/checkAdd', async function (req, res) {
  try{
    const items={
      Courseid: +req.query.id,
    } 
    if ( await watchlistModel.isWatchList(req.session.authUser.f_ID,items.Courseid))
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
    try{
    watchlistModel.delData(+req.body.id,req.session.authUser.f_ID);
    res.redirect(req.headers.referer);
    }catch (err) {
      console.error(err);
      res.send('View error log at server console.');
    }
  });
module.exports = router;