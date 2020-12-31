const express = require('express');
const courseModel = require('../models/course.model');
const config=require("../config/default.json");
const moment=require('moment');

const router = express.Router();
router.get('/', async function (req, res) {
  try{

  const total= await courseModel.countPageByAll();
  let nPages=Math.ceil(total/config.pagination.limit);
  const page_items=[];
  // console.log(nPages);
  for(i=1;i<=nPages;i++)
  {
    const item=
    {
      value:i
    }
    page_items.push(item);
  }
  const page=+req.query.page||1;
  const offset=(page-1)*config.pagination.limit;

    const rows1 =await courseModel.caterogy1(0);
    const rows2 =await courseModel.caterogy2(0);
    const rows = await courseModel.pageByAll(offset);
    
  res.render('vwCourses/course', {
    courses: rows,
    category:rows1,
    emptyC:rows1.length===0,
    notempty:rows1.length!==0,
    notempty2:rows2.length!==0,
    empty: rows.length === 0,
    page_items,
    page,
    not_previous:page<=1,
    not_next:page>=nPages,
    previous:page-1,
    next:page+1,
    next2:page+2,
    n3:nPages-2===page,
    n2:nPages-1===page,
    n1:nPages===page,
    maxThan3:nPages>=4,
    
  })
  }
  catch (err) {
    console.error(err);
    res.send('View error log at server console.');
  }
});


router.get('/aspect/:id', async function (req, res) {
  const catId = +req.params.id;  
    // console.log(catId);
  try{
    const total= await courseModel.countPageByCat1(catId);
  let nPages=Math.ceil(total/config.pagination.limit);
  const page_items=[];
  // console.log(nPages);
  for(i=1;i<=nPages;i++)
  {
    const item=
    {
      value:i
    }
    page_items.push(item);
  }
  const page=+req.query.page||1;
  const offset=(page-1)*config.pagination.limit;


  const rows2 =await courseModel.caterogy2(0);
  const rows1 =await courseModel.caterogy1(catId);
  const rows = await courseModel.pageByCat1(catId,offset);
  res.render('vwCourses/course', {
    courses: rows,
    category:rows1,
    emptyC:rows1.length===0,
    notempty:rows1.length!==0,
    notempty2:rows2.length!==0,
    empty: rows.length === 0,
    page_items,
    page,
    not_previous:page<=1,
    not_next:page>=nPages,
    previous:page-1,
    next:page+1,
    next2:page+2,
    n3:nPages-2===page,
    n2:nPages-1===page,
    n1:nPages===page,
    maxThan3:nPages>=4,
   
  })
  }
  catch (err) {
    console.error(err);
    res.send('View error log at server console.');
  }
});
router.get('/small_aspect/:id', async function (req, res) {
  const catId = +req.params.id;  
  // console.log(catId);
  try{
    const total= await courseModel.countPageByCat2(catId);
  let nPages=Math.ceil(total/config.pagination.limit);
  const page_items=[];
  // console.log(nPages);
  for(i=1;i<=nPages;i++)
  {
    const item=
    {
      value:i
    }
    
    page_items.push(item);
  }
  const page=+req.query.page||1;
  const offset=(page-1)*config.pagination.limit;

  const rows2 =await courseModel.caterogy2(catId);
  const rows1 =await courseModel.caterogy1(0);
  // console.log(total);
  const rows = await courseModel.pageByCat2(catId,offset);
  // console.log(rows);
  res.render('vwCourses/course', {
    courses: rows,
    category:rows2,
    emptyC:rows2.length===0,
    notempty:rows1.length!==0,
    notempty2:rows2.length!==0,
    empty: rows.length === 0,
    page_items,
    page,
    not_previous:page<=1,
    not_next:page>=nPages,
    previous:page-1,
    next:page+1,
    next2:page+2,
    n3:nPages-2===page,
    n2:nPages-1===page,
    n1:nPages===page,
    maxThan3:nPages>=4,
    

  })
  }
  catch (err) {
    console.error(err);
    res.send('View error log at server console.');
  }
});

router.get('/details', async function (req, res) {
  const id=+req.query.id;
  try{
    const rows = await courseModel.single(id);
    const datetime= await courseModel.getdateById(id);
    const lastt=moment(datetime, 'YYYY-MM-DD').format('DD-MM-YYYY');
    const c5= await courseModel.get5course(id);
    // console.log(c5);
    if(rows==null)
    {
      res.render('404', {
        layout: false
      });
    }
    res.render('vwCourses/courseDetail', {
      course:rows,
      dm:lastt,
      related:c5
    })
  }
  catch (err) {
    console.error(err);
    res.send('View error log at server console.');
  }
});

module.exports = router;