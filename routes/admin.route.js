const express = require('express');
const bcrypt = require('bcryptjs');
const categoryModel = require('../models/category.model');
const userModel = require('../models/user.model');
const courseModel = require('../models/course.model');

const router = express.Router();
//Categories----------------------------------------------------------------------------
router.get('/categories/', async function (req, res) {
  const rows1 = await categoryModel.all1();
  const rows2 = await categoryModel.all2();
  
  res.render('vwAdmin/manageCategories/allCategories', {
    aspects_level1: rows1,
    aspects_level2: rows2,
    empty: rows1.length === 0,
    empty1: rows2.length === 0
  });
})

router.get('/categories/add', function (req, res) {
  res.render('vwAdmin/manageCategories/add');
})

router.get('/', function (req, res) {
  res.render('home');
})

router.post('/categories/add', async function (req, res) {
  const ret = await categoryModel.add(req.body);
  res.redirect('/admin/categories');
})

router.get('/categories/:id/add', function (req, res) {
  const id = req.params.id;
  //console.log("đã lấy đc");
  // if (category2 === null) {
  //   return res.redirect('/admin/categories');
  // }
  res.render('vwAdmin/manageCategories/addlv2', {
    id
  });
})

router.post('/categories/:id/add', async function (req, res) {
  const ret =  categoryModel.addlv2(req.body);
  // console.log(ret);
  // res.send('OK');
  //res.render('vwAdmin/manageCategories/addlv2');
  res.redirect('/admin/categories');
})


router.post('/categories/del', async function (req, res) {
  const ret = await categoryModel.del(req.body);
  res.redirect('/admin/categories');
})

router.post('/categories/dellv2', async function (req, res) {
  const ret = await categoryModel.dellv2(req.body);
  res.redirect('/admin/categories');
})

router.post('/categories/patch', async function (req, res) {
  const ret = await categoryModel.patch(req.body);
  res.redirect('/admin/categories');
})
router.post('/categories/patchlv2', async function (req, res) {
  const ret = await categoryModel.patchlv2(req.body);
  res.redirect('/admin/categories');
})

router.get('/categories/:id', async function (req, res) {
  const id = req.params.id;
  const category = await categoryModel.single(id);
  if (category === null) {
    return res.redirect('/admin/categories');
  }
  res.render('vwAdmin/manageCategories/edit', {
    category
  });
})
router.get('/categories/small_aspect/:id', async function (req, res) {
  const id = req.params.id;
  const course = await categoryModel.nameLv1(id)
  const category2 = await categoryModel.singlelv2(id);
  if (category2 === null) {
    return res.redirect('/admin/categories');
  }
  res.render('vwAdmin/manageCategories/editlv2', {
    category2,
    course
  });
})

router.get('/is-availableCat1', async function (req, res) {
 // console.log("vô đc /accounts/is-available");
  const name = req.query.name;
  //console.log(name);
  
  const aspect2 = await categoryModel.singlebyName2(name);
  if (aspect2 === null) {
    //console.log("true");
    return res.json(true);
  }
  res.json(false);
})
router.get('/is-availableCat', async function (req, res) {
  const name = req.query.name;
  
  const aspect1 = await categoryModel.singlebyName1(name);
  if (aspect1 === null) {
    return res.json(true);
  }
  res.json(false);
})
router.get('/is-availableCatID', async function (req, res) {
  const id = req.query.id;
  
  const aspect1 = await courseModel.singleByIDlv1(id);
  if (aspect1 === null) {
    return res.json(true);
  }
  res.json(false);
})
router.get('/is-availableCatID1', async function (req, res) {
  const id = req.query.id;
  
  const aspect = await courseModel.singleByIDlv2(id);
  if (aspect === null) {
    return res.json(true);
  }
  res.json(false);
})
//--------------------------------------------------------------------------------------

//Accounts------------------------------------------------------------------------------
router.get('/accounts/', async function (req, res) {
  const rowTeachers = await userModel.allTeacher();
  const rowStudents = await userModel.allStudent();
  const rowTeachersBlock = await userModel.allTeacherBlock();
  const rowStudentsBlock = await userModel.allStudentBlock();
  res.render('vwAdmin/manageAccounts/allAccounts', {
    teachers: rowTeachers,
    students: rowStudents,
    rowTeachersBlock: rowTeachersBlock,
    rowStudentsBlock: rowStudentsBlock,
    emptyTeacher: rowTeachers.length === 0,
    emptyStudet: rowStudents.length === 0,
    emptyTeacherBlock: rowTeachersBlock.length === 0,
    emptyStudetBlock: rowStudentsBlock.length === 0
  });
})
router.get('/accounts/add', function (req, res) {
  res.render('vwAdmin/manageAccounts/add');
})
router.post('/accounts/add', async function (req, res) {
  const hash = bcrypt.hashSync(req.body.f_Password, 10);
  const user = {
    
    f_Password: hash,
    f_Fullname: req.body.f_Fullname,
    f_Email: req.body.f_Email,
    f_Permission: 0,
    f_Type: 2,
    isDisabled:0
  }
  await userModel.add(user);
  res.redirect('/admin/accounts');
})
router.post('/accounts/remove', function (req, res) {
  userModel.del(+req.body.id);
  res.redirect(req.headers.referer);
});
router.post('/accounts/block', function (req, res) {
  userModel.setBlock(+req.body.block,+req.body.id);
  res.redirect(req.headers.referer);
});

//Courses-------------------------------------------------------------------------------
router.get('/courses/', async function (req, res) {
  const rows = await courseModel.all();
  const rowsBlock = await courseModel.allBlock();
  res.render('vwAdmin/manageCourses/allCourses', {
    course: rows,
    empty: rows.length === 0,
    courseBlock: rowsBlock,
    emptyBlock: rowsBlock.length === 0
  });
})
router.post('/courses/remove', function (req, res) {
  courseModel.del(+req.body.id);
  res.redirect(req.headers.referer);
});
router.post('/courses/block', function (req, res) {
  courseModel.setBlock(+req.body.block,+req.body.id);
  res.redirect(req.headers.referer);
});
//--------------------------------------------------------------------------------------


module.exports = router;