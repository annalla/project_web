const express = require('express');
const categoryModel = require('../models/category.model');
//const locals = require('./middlewares/locals.mdw');

const router = express.Router();

router.get('/categories/', async function (req, res) {
  const rows1 = await categoryModel.all1();
  const rows2 = await categoryModel.all2();
  //const rows = await categoryModel.all();

  
  res.render('vwAdmin/manageCategories/allCategories', {
    aspects_level1: rows1,
    aspects_level2: rows2,
    empty: rows1.length === 0,
    empty1: rows2.length === 0
    
    //empty: rows.length ===0,
  });

  // const p = db.load('select * from categories');
  // p.then(function (rows) {
  //   res.render('vwCategories/index', {
  //     categories: rows,
  //     empty: rows.length === 0
  //   });
  // }).catch(function (err) {
  //   console.error(err);
  //   res.send('View error log at server console.');
  // });

  // db.load('select * from categories', function (rows) {
  //   res.render('vwCategories/index', {
  //     categories: rows,
  //     empty: rows.length === 0
  //   });
  // });
})

router.get('/categories/add', function (req, res) {
  res.render('vwAdmin/manageCategories/add');
})

router.get('/', function (req, res) {
  res.render('home');
})

router.post('/categories/add', async function (req, res) {
  const ret = await categoryModel.add(req.body);
  // console.log(ret);
  // res.send('OK');
  res.render('vwAdmin/manageCategories/add');
})

router.get('/categories/:id/add', function (req, res) {
  const id = req.params.id;
  console.log("đã lấy đc");
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
  res.render('vwAdmin/manageCategories/addlv2');
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
  const category2 = await categoryModel.singlelv2(id);
  if (category2 === null) {
    return res.redirect('/admin/categories');
  }

  res.render('vwAdmin/manageCategories/editlv2', {
    category2
  });
})

module.exports = router;