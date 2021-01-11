const express = require('express');
const bcrypt = require('bcryptjs');
const categoryModel = require('../models/category.model');
const userModel = require('../models/user.model');
const courseModel = require('../models/course.model');
const router = express.Router();

router.get('/', async function (req, res) {
    const rows10 = await courseModel.find10NewCourse();
    const rows5 = await courseModel.findMostAspectWeek();
    const row = await courseModel.countfindMostAspectWeek();
    const t = [];
    for (var i = 0; i < 10; i++) {
        const m = rows10[i].CourseID;
        const s = await courseModel.ByFullId(m);
        const item = {
            c: s
        }
        t.push(item);
    }
    const t1 = [];
    for (var i = 0; i < row; i++) {
        const m1 = rows5[i].ID_aspect;
        const s1 = await categoryModel.ById3(m1);
        const item1 = {
            c1: s1
        }
        t1.push(item1);
    }
   
    res.render('home', { t, t1 });
});
module.exports = router;