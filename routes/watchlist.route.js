const express = require('express');
// const moment = require('moment');
// const cartModel = require('../models/cart.model');
const courseModel = require('../models/course.model');
const watchlistModel = require('../models/watchlist.model');
// const orderDetailModel = require('../../models/order-detail.model');

const router = express.Router();

router.get('/', async function (req, res) {

    const rows=await watchlistModel.getMyCourse(req.session.authUser.f_ID);
    // console.log(rows);
  res.render('vwListCourse/myFavoriteCourse', {
      course:rows
  });
})

router.post('/add', async function (req, res) {
    console.log('add');
    const id=+req.body.id;
    const detail=
    {
        CourseID:id,
        f_ID: req.session.authUser.f_ID,
    };
    watchlistModel.add(detail);
  res.redirect(req.headers.referer);
});
router.get('/checkAdd', async function (req, res) {
    const items={
      Courseid: +req.query.id,
    } 
    // console.log(await watchlistModel.isWatchList(req.session.authUser.f_ID,items.Courseid));
    if ( await watchlistModel.isWatchList(req.session.authUser.f_ID,items.Courseid))
    {
        res.json(true);
    }
    else
    {  
        res.json(false);
    }
  });

module.exports = router;