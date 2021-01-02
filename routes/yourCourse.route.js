const express = require('express');
// const courseModel = require('../models/course.model');
const config=require("../config/default.json");
const moment=require('moment');

const router = express.Router();
//phân trang course
router.get('/', async function (req, res) {
  try{
  
  res.render('vwListCourse/list', {
   
    
  })
  }
  catch (err) {
    console.error(err);
    res.send('View error log at server console.');
  }
});




module.exports = router;