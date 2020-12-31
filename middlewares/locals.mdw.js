// const cartModel = require('../models/cart.model');
const categoryModel = require('../models/category.model');

module.exports = function (app) {
  app.use(async function (req, res, next) {
    if (typeof (req.session.isAuth) === 'undefined') {
      req.session.isAuth = false;
      //req.session.cart = [];
    }

    res.locals.isAuth = req.session.isAuth;
    res.locals.authUser = req.session.authUser;
    //res.locals.cartSummary = cartModel.getNumberOfItems(req.session.cart)
    next();
  })

  app.use(async function (req, res, next) {
    // const rows1 = await categoryModel.allWithDetails();
    const rows1 = await categoryModel.all1();
    const rows2=await categoryModel.count1();
    // console.log(rows2);

    // const rows2 = await categoryModel.all2();
    // console.log(rows1);
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
    // console.log(t);
   res.locals.lol=t;
    next();
  })
}