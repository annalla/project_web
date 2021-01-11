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
    const rowtopWatch = await courseModel.findWatchMost();
    const rowsCourseTrend = await courseModel.find4CourseTrend();
    const row1 = await courseModel.countfind4CourseTrend()

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
    const t2 = [];
    for (var i = 0; i < 10; i++) {
        const m2 = rowtopWatch[i].CourseID;
        const s2 = await courseModel.ByFullId(m2);
        const item2 = {
            c2: s2
        }
        t2.push(item2);
    }
    const t3 = [];
    for (var i = 0; i < row1; i++) {
        const m3 = rowsCourseTrend[i].CourseID;
        const s3 = await courseModel.ById(m3);
        const item3 = {
            c3: s3
        }
        t3.push(item3);
    }
    res.render('home', { t, t1, t2, t3 });

});
module.exports = router;