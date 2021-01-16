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
            small_brief:req.body.FullDes2,
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
            Disabled:0
        };
        courseModel.add(detail);
        res.redirect('/teacher/yourTeacherCourse');
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
  const edit=req.query.edit;
  try{
    
    let isEditFee=0;
    let isEditLecture=0;
    let isEditBrief=0;
    if(edit==="fee")
    {
      isEditFee=1; 
    }
    else if( edit==="brief")
    {
      isEditBrief=1; 
    }
    else if(edit==="lecture")
    {
      isEditLecture=1; 
    }
    const rows = await courseModel.single(id);
    if(rows==null)
    {
      res.render('404', {
        layout: false
      });
    }
    if(rows.TeacherID!==req.session.authUser.f_ID)
    {
      return res.redirect('/account/login');
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
      num_lecture:num_lect,
      editFee:isEditFee,
      editBrief:isEditBrief,
      editLecture:isEditLecture,
    })
  }
  catch (err) {
    console.error(err);
    res.send('View error log at server console.');
  }
});
router.post('/editFee', function (req, res) {
  try{
    courseModel.editFee(req.body);
    const url="/teacher/editCourse?id="+req.body.id;
    res.redirect(url);
  }
  catch (err) {
    console.error(err);
    res.send('View error log at server console.');
  }
});
router.post('/editBrief', function (req, res) {
  try{
  courseModel.editBrief(req.body);
  const url="/teacher/editCourse?id="+req.body.id;
  res.redirect(url);
  }catch (err) {
    console.error(err);
    res.send('View error log at server console.');
  }
});
router.get('/checkNameLecture', async function (req, res) {
  try{
  const result= await lectureModel.checkName(req.query.name,+req.query.id);
  res.json(result);
  }catch (err) {
    console.error(err);
    res.send('View error log at server console.');
  }
});
router.post('/addLecture', async function (req, res) {
  try{
    const storage = multer.diskStorage({
      destination: function (req, file, cb) {
        cb(null, './public/video/')
      },
      filename: function (req, file, cb) {
        cb(null, Date.now()+file.originalname)
      }
    });
    const upload = multer({ storage });
    upload.single('fuMain')(req, res, function (err) {
      if (err) {
        redirect(req.headers.referer);
      } else {
        const file=res.req.file.filename;
        let intro=0;
        if(req.body.finish==='1')
        {
          courseModel.addfinish(+req.body.id);
        }
        if(req.body.intro==='1')
        {
          intro=1;
        }
        const detail={
          title_name:req.body.f_name,
          name_video:req.body.f_video,
          CourseID:+req.body.id,
          file_vd:file,
          isIntro:intro
         };
         const update={
           date:moment().format('YYYY-MM-DD HH:mm:ss'),
         }
         courseModel.updateDate(update,+req.body.id);
      lectureModel.add(detail);
        const url="/teacher/editCourse?id="+req.body.id;
        res.redirect(url);
      }
    });
   
   
  }catch (err) {
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
      cb(null,'./public/images/course/teacher/')
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
      };
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