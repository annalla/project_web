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
  const aspect1=+req.query.aspect1||0;
  const aspect2=+req.query.aspect2||0;
  const filter=+req.query.filter||0;
  var total;
  if(aspect1===0 && aspect2===0)
    {
      total= await courseModel.countPageByAll();
    }
    else if(aspect1!==0)
    {
      total= await courseModel.countPageByCat1(aspect1);
    }
    else if(aspect2!==0)
    {
      total= await courseModel.countPageByCat2(aspect2);
    }
  
  let nPages=Math.ceil(total/config.pagination.limit);
  const page_items=[];
  for(i=1;i<=nPages;i++)
  {
    const item=
    {
      value:i,
      aspect11:aspect1,
      aspect22:aspect2,
      f:filter
    }
    page_items.push(item);
  }
  let page=+req.query.page||1;
  if(page<=0||page>nPages)
  {
    page=1;
  }
  const offset=(page-1)*config.pagination.limit;

    const rows1 =await courseModel.caterogy1(aspect1);
    const rows2 =await courseModel.caterogy2(aspect2);
    var rows;
    var rows4;
    if(aspect1===0 && aspect2===0)
    {
      switch(filter) {
        case 1:
          rows = await courseModel.filterByFeeDown(offset);
          break;
        case 2:
          rows = await courseModel.filterByFeeUp(offset);
          break;
        case 3:
          rows = await courseModel.filterByRankDown(offset);
          break;
        case 4:
          rows = await courseModel.filterByRankUp(offset);
          break;  
        default:
          rows = await courseModel.pageByAll(offset);
      }
      
      rows4=rows1;
    }
    else if(aspect1!==0)
    {
      switch(filter) {
        case 1:
          rows = await courseModel.filterByFeeDownl1(aspect1,offset);
          break;
        case 2:
          rows = await courseModel.filterByFeeUpl1(aspect1,offset);
          break;
        case 3:
          rows = await courseModel.filterByRankDownl1(aspect1,offset);
          break;
        case 4:
          rows = await courseModel.filterByRankUpl1(aspect1,offset);
          break;  
        default:
          rows = await courseModel.pageByCat1(aspect1,offset);
      }
      
      rows4=rows1;
    }
    else if(aspect2!==0)
    {
      switch(filter) {
        case 1:
          rows = await courseModel.filterByFeeDownl2(aspect2,offset);
          break;
        case 2:
          rows = await courseModel.filterByFeeUpl2(aspect2,offset);
          break;
        case 3:
          rows = await courseModel.filterByRankDownl2(aspect2,offset);
          break;
        case 4:
          rows = await courseModel.filterByRankUpl2(aspect2,offset);
          break;  
        default:
          rows = await courseModel.pageByCat2(aspect2,offset);
      }
     
      rows4=rows2;
    };
    const newC=await courseModel.find10NewCourse();
    const newBest= await courseModel.find10BestSellerCourse();
    for(const i of rows)
    {
      i.isNew=false;
      i.BestSeller=false;
      for( const j of newC)
      {
        if (i.CourseID===j.CourseID)
        {
          i.isNew=true;
        }
      }
      for( const j of newBest)
      {
        if (i.CourseID===j.CourseID)
        {
          i.isBestSeller=true;
        }
      }
    }
    
  res.render('vwCourses/course', {
    courses: rows,
    category:rows4,
    emptyC:rows1.length===0 && rows2.length===0,
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
    aspect1,
    aspect2,
    filter    
    
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
      return;
    }
    var num=rows.num_count;
    num+=1;
    const count={num_count:num};
    courseModel.updateDate(count,id);
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
    const filter=+req.query.filter||0;
    let page=+req.query.page||0;
    const search = req.query.search;
    var rows;

    const total=await courseModel.countfulltextSearch(search);
    
    let nPages=Math.ceil(total/config.pagination.limit);
    const page_items=[];
    for(i=1;i<=nPages;i++)
    {
      const item=
      {
        value:i,
        s:search,
        f:filter
      }
      page_items.push(item);
    }
    if(page<=0||page>nPages)
    {
      page=1;
    }
    const offset=(page-1)*config.pagination.limit;
  
   switch(filter) {
        case 1:
          rows = await courseModel.filterFeeDownfulltextSearch(search,offset);
          break;
        case 2:
          rows = await courseModel.filterFeeUpfulltextSearch(search,offset);
          break;
        case 3:
          rows = await courseModel.filterEvalueDownfulltextSearch(search,offset);
          break;
        case 4:
          rows = await courseModel.filterEvalueUpfulltextSearch(search,offset);
          break;  
        default:
          rows = await courseModel.pagefulltextSearch(search,offset);
      }
    

    const newC=await courseModel.find10NewCourse();
    const newBest= await courseModel.find10BestSellerCourse();
    for(const i of rows)
    {
      i.isNew=false;
      i.BestSeller=false;
      for( const j of newC)
      {
        if (i.CourseID===j.CourseID)
        {
          i.isNew=true;
        }
      }
      for( const j of newBest)
      {
        if (i.CourseID===j.CourseID)
        {
          i.isBestSeller=true;
        }
      }
    }
    res.render('vwCourses/search', {
      courses: rows,
      empty: rows.length === 0,
      page,
      page_items,
      not_previous:page<=1,
      not_next:page>=nPages,
      previous:page-1,
      next:page+1,
      next2:page+2,
      n3:nPages-2===page,
      n2:nPages-1===page,
      n1:nPages===page,
      maxThan3:nPages>=4,
      search,
      filter
      
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
  var star1 = (+req.body.star)*1.0;
  const avgRate = (sumRate*(countRate-1) + star1)/(countRate);
  courseModel.setEvalue(id,Math.round(avgRate * 100) / 100);

  res.redirect(req.headers.referer);
});


module.exports = router;