const express = require('express');
const moment = require('moment');
const multer = require('multer');
const courseModel = require('../models/course.model');
const lectureModel = require('../models/lecture.model');
const categoryModel = require('../models/category.model');
const userModel = require('../models/user.model');


const router = express.Router();


//add course
router.get('/addCourse', async function (req, res) {
  try{
    const cat1= await categoryModel.all1();
    const cat2=await categoryModel.all2();
    
    res.render('vwTeacher/createCourse', {
        category1:cat1,
        category2:cat2
  });
    }
  catch (err) {
    console.error(err);
    res.send('View error log at server console.');
  }
});
router.post('/add', async function (req, res) {
  try{
    const storage = multer.diskStorage({
      destination: function (req, file, cb) {
        cb(null, './public/images/course/')
      },
      filename: function (req, file, cb) {
        cb(null, file.originalname+Date.now()+req.session.authUser.f_ID+'.jpg')
      }
    });
    const upload = multer({ storage });
    upload.single('fuMain')(req, res, function (err) {
      if (err) {
        redirect('/teacher/addCourse');
      } else {
        const file=res.req.file.filename;
        const f=Number.parseFloat(req.body.f_fee);
        let d=0;
        let t=f;
        if(req.body.f_discount===''){
          d=0;
        }
        else{
          d=Number.parseFloat(req.body.f_discount);
        }
        if(d!==0){
          t=d;
        }
        const detail={
            small_image:file,
            title:req.body.f_name,
            ID_aspect:req.body.lv,
            brief:req.body.FullDes,
            fee:f,
            discount:d,
            num_evalue:0,
            evalue:0,
            num_join:0,
            num_count:0,
            date:moment().format('YYYY-MM-DD'),
            status:0,
            TeacherID:req.session.authUser.f_ID,
            total:t,
        };
        courseModel.add(detail);
        res.redirect('/');
      }
    });
   
   
  }catch (err) {
    console.error(err);
    res.send('View error log at server console.');
  }
});
router.get('/checkNameCourse', async function (req, res) {
  try{
    const name=req.query.name;
    if(await courseModel.isExistNameCourse(name))
    {
      res.json(false);
      return;
    }
    res.json(true);
    }
  catch (err) {
    console.error(err);
    res.send('View error log at server console.');
  }
});
///
router.get('/editCourse', async function (req, res) {
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
    const lectures=await lectureModel.getAll(id);
    const rate = await courseModel.Rate(id);
    const rows2= await lectureModel.getLectureById(vd);
    let num_lect=0;
    if(rows.status===1)
    {
      num_lect=await lectureModel.countLecture(id);
    }
    
    res.render('vwTeacher/editCourse', {
      course:rows,
      comment: row1,
      rating: rate,
      dm:lastt,
      issAuth:req.session.isAuth,
      lecture:lectures,
      isLec:lectures===null,
      unit:rows2,
      num_lecture:num_lect
    })
  }
  catch (err) {
    console.error(err);
    res.send('View error log at server console.');
  }
});
router.get('/yourTeacherCourse', async function (req, res) {
  try{
    const course = await courseModel.singleCoursebyTeacher(req.session.authUser.f_ID);
    res.render('vwTeacher/yourTeacherCourse', {
    items: course,
  });
}catch (err) {
  console.error(err);
  res.send('View error log at server console.');
}
});

router.post('/remove', function (req, res) {
  console.log(req.body.id);
  courseModel.del(req.body.id);
  res.redirect(req.headers.referer);
});

router.get('/infoTeacher', async function (req,res){
  try{
    const rows= await userModel.singleInfo(req.session.authUser.f_ID);
    res.render('vwTeacher/infoTeacher', {
      infor:rows,
    })
  }catch (err) {
    console.error(err);
    res.send('View error log at server console.');
  }
})

router.post('/infoTeacher', function (req,res){
try{
  const storage = multer.diskStorage({
    destination: function (req, file, cb){
      cb(null,'./public/images/teachers/')
    },
    filename: function (req, file, cb){
      cb(null,req.session.authUser.f_ID + '.jpg')
    }
  })
  const upload = multer({storage});

  upload.single('fuMain')(req,res,function (err){
    if(err){

    }else {
      const infor = {
        f_ID: req.session.authUser.f_ID,
        job: req.body.job,
        image: req.session.authUser.f_ID + '.jpg',
        intro: req.body.intro,
      }
      console.log(infor);
      userModel.addInfo(infor);
      res.render('vwTeacher/infoTeacher');
    }
  })
}catch (err) {
  console.error(err);
  res.send('View error log at server console.');
}
})
module.exports = router;