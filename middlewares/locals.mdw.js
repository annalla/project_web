const cartModel = require('../models/cart.model');
const categoryModel = require('../models/category.model');
const courseModel = require('../models/course.model');
const userModel =require('../models/user.model');

module.exports = function (app) {
  app.use(async function (req, res, next) {
    if (typeof (req.session.isAuth) === 'undefined') {
      req.session.isAuth = false;
      req.session.cart = [];
    }
    res.locals.isAuth = req.session.isAuth;
    res.locals.authUser = req.session.authUser;
    res.locals.isAdmin=false;
    res.locals.isTeacher=false;
    res.locals.cartSummary=0;
    res.locals.infor = null;

    if(req.session.isAuth)
    {
      if(+req.session.authUser.f_Permission===1)
      {
        res.locals.isAdmin=true;
      }
      else if(+req.session.authUser.f_Type===2){
        res.locals.isTeacher=true;
        res.locals.infor =await userModel.singleInfo(req.session.authUser.f_ID);
      }
      req.session.cart=await cartModel.getCart(req.session.authUser.f_ID);

      // req.session.cart=[];
      // console.log( req.session.cart);
      res.locals.cartSummary = cartModel.getNumberOfItems(req.session.cart);
      // console.log(res.locals.cartSummary);
    }
    
    
    
    next();
  })

  app.use(async function (req, res, next) {
    const rows1 = await categoryModel.all1();
    const rows2=await categoryModel.count1();
    res.locals.lcCategory = rows1;
    const t=[];
    for( var i=0;i<rows2;i++)
    {
      const m=rows1[i].ID_aspect1;
      const n=rows1[i].ID_aspect1;
      const s2= await categoryModel.ById2(m);
      const s1= await categoryModel.ById1(n);
      const item={
        lv:s1,
        lv2:s2
      }
      t.push(item);
      
    }
    res.locals.lol=t;
    next();
  })
// khóa học nhiều nhất
  // app.use(async function (req, res, next) {
  //   const rows = await courseModel.find10NewCourse();
  //   res.locals.lcCourse = rows;
  //   const t=[];
  //   for( var i=0;i<10;i++)
  //   {
  //     const m=rows[i].CourseID;
  //     const s= await courseModel.ByFullId(m);
  //     const item={
  //       c: s
  //     }
  //     t.push(item);
  //   }
  //   res.locals.c10=t;
  //   next();
  // });
}