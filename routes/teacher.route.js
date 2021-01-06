const express = require('express');
const moment = require('moment');
const courseModel = require('../models/course.model');


const router = express.Router();

// router.get('/', async function (req, res) {
//   try{
//     const rows=await watchlistModel.getMyCourse(req.session.authUser.f_ID);
//     // console.log(rows);
//      res.render('vwListCourse/myFavoriteCourse', {
//       course:rows
//   });
//   }catch (err) {
//     console.error(err);
//     res.send('View error log at server console.');
//   }
// })

router.get('/addCourse', async function (req, res) {
  try{
    res.render('vwTeacher/createCourse', {
        //       course:rows
        //   });
  });
    }
  catch (err) {
    console.error(err);
    res.send('View error log at server console.');
  }
});

module.exports = router;