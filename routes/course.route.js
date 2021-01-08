const express = require('express');
const courseModel = require('../models/course.model');
const lectureModel = require('../models/lecture.model');
const joinModel = require('../models/join.model');
const config=require("../config/default.json");
const moment=require('moment');

const router = express.Router();
//phân trang course
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
  let page=+req.query.page||1;
  if(page<=0||page>nPages)
  {
    page=1;
  }
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

//phân trang lĩnh vực cấp 1
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
  let page=+req.query.page||1;
  if(page<=0||page>nPages)
  {
    page=1;
  }
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
//phân trang lĩnh vực cấp 2
router.get('/small_aspect/:id', async function (req, res) {
  const catId = +req.params.id;  
  try{
  const total= await courseModel.countPageByCat2(catId);
  let nPages=Math.ceil(total/config.pagination.limit);
  const page_items=[];
  for(i=1;i<=nPages;i++)
  {
    const item=
    {
      value:i
    }
    
    page_items.push(item);
  }
  let page=+req.query.page||1;
  if(page<=0||page>nPages)
  {
    page=1;
  }
  const offset=(page-1)*config.pagination.limit;

  const rows2 =await courseModel.caterogy2(catId);
  const rows1 =await courseModel.caterogy1(0);
  const rows = await courseModel.pageByCat2(catId,offset);
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
// Chi tiết khoa học
router.get('/details', async function (req, res) {
  const id=+req.query.id||0;
  const vd=+req.query.video||0;
  try{
    const rows = await courseModel.single(id);
    if(rows==null)
    {
      res.render('404', {
        layout: false
      });
    }
    const row1 = await courseModel.Comment(id);
    const datetime= await courseModel.getdateById(id);
    const lastt=moment(datetime, 'YYYY-MM-DD').format('DD-MM-YYYY');
    const c5= await courseModel.get5course(id);
    const lectures=await lectureModel.getLectures(id);
    const intro=await lectureModel.getLectureIntro(id);
    const rate = await courseModel.Rate(id);
    const rows2= await lectureModel.getLectureById(vd);
    let num_lect=0;
    if(rows.status===1)
    {
      num_lect=await lectureModel.countLecture(id);
    }
    let isBought=false;
    if(req.session.isAuth)
    {
      if( await joinModel.isJoin(req.session.authUser.f_ID,id))
      isBought=true;
    }
    res.render('vwCourses/courseDetail', {
      course:rows,
      comment: row1,
      rating: rate,
      dm:lastt,
      related:c5,
      isPurchased:isBought,
      issAuth:req.session.isAuth,
      lecture:lectures,
      isLec:lectures===null,
      introduction:intro,
      unit:rows2,
      num_lecture:num_lect
    })
  }
  catch (err) {
    console.error(err);
    res.send('View error log at server console.');
  }
});
//full text search
router.get('/search', async function (req, res) {
  try{
    const page=1;
    const nPages=1;
    const search = req.query.search;
    const rows = await courseModel.fulltextSearch(search);
      
    res.render('vwCourses/search', {
      courses: rows,
      empty: rows.length === 0,
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

//comment
router.post('/addComment',async function (req, res) {
  const id=+req.body.id;
  const course=courseModel.singleCourse(id);
  const detail=
  {
      CourseID:id,
      f_ID: req.session.authUser.f_ID,
      content: req.body.comment,
  };
  const rate1=
  {
      CourseID: id,
      f_ID: req.session.authUser.f_ID,
      rate: req.body.star,
  };
  courseModel.addComment(detail);
  courseModel.addRate(rate1);
  const countComment = await courseModel.getNum_evalue(id);
  const countRate = await courseModel.countRate(id);
  const sumRate = await courseModel.getEvalue(id);
  courseModel.setnum_evalue(id,countComment + 1);
  var star1 = (req.body.star)*1.0;
  const avgRate = (sumRate*(countRate-1) + star1)/(countRate);
  courseModel.setEvalue(id,Math.round(avgRate * 100) / 100);

  res.redirect(req.headers.referer);
});

// router.get('/filter1', async function (req, res) {
//   try{

//     const total= await courseModel.countPageByAll();
//     let nPages=Math.ceil(total/config.pagination.limit);
//     const page_items=[];
//     // console.log(nPages);
//     for(i=1;i<=nPages;i++)
//     {
//       const item=
//       {
//         value:i
//       }
//       page_items.push(item);
//     }
//     const page=+req.query.page||1;
//     const offset=(page-1)*config.pagination.limit;
  
//       const rows1 =await courseModel.caterogy1(0);
//       const rows2 =await courseModel.caterogy2(0);
//       const rows = await courseModel.filterByRank(offset);
      
//     res.render('vwCourses/course', {
//       courses: rows,
//       category:rows1,
//       emptyC:rows1.length===0,
//       notempty:rows1.length!==0,
//       notempty2:rows2.length!==0,
//       empty: rows.length === 0,
//       page_items,
//       page,
//       not_previous:page<=1,
//       not_next:page>=nPages,
//       previous:page-1,
//       next:page+1,
//       next2:page+2,
//       n3:nPages-2===page,
//       n2:nPages-1===page,
//       n1:nPages===page,
//       maxThan3:nPages>=4,
      
//     })
//     }
//     catch (err) {
//       console.error(err);
//       res.send('View error log at server console.');
//     }
// });


module.exports = router;