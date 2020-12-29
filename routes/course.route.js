const express = require('express');
const courseModel = require('../models/course.model');

const router = express.Router();
router.get('/', async function (req, res) {

  try{
    const rows1 =await courseModel.caterogy1(0);
    const rows2 =await courseModel.caterogy2(0);
    const rows = await courseModel.all();
  // console.log(rows);
  res.render('vwCourses/course', {
    courses: rows,
    category:rows1,
    emptyC:rows1.length===0,
    notempty:rows1.length!==0,
    notempty2:rows2.length!==0,
    empty: rows.length === 0
  })
  }
  catch (err) {
    console.error(err);
    res.send('View error log at server console.');
  }
});


router.get('/aspect/:id', async function (req, res) {
  const catId = req.params.id;  
    // console.log(catId);
  try{
  const rows2 =await courseModel.caterogy2(0);
  const rows1 =await courseModel.caterogy1(catId);
  // console.log(rows1);
  const rows = await courseModel.byCat1(catId);
  // console.log(rows);
  res.render('vwCourses/course', {
    courses: rows,
    category:rows1,
    emptyC:rows1.length===0,
    notempty:rows1.length!==0,
    notempty2:rows2.length!==0,
    empty: rows.length === 0
  })
  }
  catch (err) {
    console.error(err);
    res.send('View error log at server console.');
  }
});
router.get('/small_aspect/:id', async function (req, res) {
  const catId = req.params.id;  
    // console.log(catId);
  try{
  const rows2 =await courseModel.caterogy2(catId);
  const rows1 =await courseModel.caterogy1(0);
  // console.log(rows1);
  const rows = await courseModel.byCat2(catId);
  // console.log(rows);
  res.render('vwCourses/course', {
    courses: rows,
    category:rows2,
    emptyC:rows2.length===0,
    notempty:rows1.length!==0,
    notempty2:rows2.length!==0,
    empty: rows.length === 0
  })
  }
  catch (err) {
    console.error(err);
    res.send('View error log at server console.');
  }
});


module.exports = router;