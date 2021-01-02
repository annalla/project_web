const db = require('../utils/db');
const TBL_CART = 'cart';
module.exports = {
   
    addData(entity,item,cart) {
      for (ci of cart) {
        if (ci.Courseid === item.Courseid) {
          return;
        }
      }
      return db.add(entity, TBL_CART);
    
    },
    async getCart(id)
    {
      const t= await db.load(`select count(*) as total from cart where f_ID=${id}`);
      cart=[];
      const rows=await db.load(`select * from cart where f_ID=${id}`);
      let i;
      for(i =0;i<t[0].total;i++)
      {
        const item={
          Courseid:rows[i].CourseID
        };
        // console.log(item);
        cart.push(item);
      };
      return cart;
    },
    add(cart, item) {
      for (ci of cart) {
        if (ci.Courseid === item.Courseid) {
          return;
        }
      }
      cart.push(item);
    },
    checkAdd(cart, item) {
        for (ci of cart) {
          if (ci.Courseid === item.Courseid) {
            //   console.log('dm');
            return true;
          }
        }
        // console.log('dsdfm');
        return false;
      },
    del(cart, id) {
      for (let i = cart.length - 1; i >= 0; i--) {
        if (id === cart[i].Courseid) {
          cart.splice(i, 1);
          return;
        }
      }
    },
    delData(id,user) {
      // const idCart=db.load(`select * from cart where f_ID=${id} and `)
      const condition1 = { CourseID:id };
      const condition2 = { f_ID:user };
    return db.del2(condition1,condition2, TBL_CART);
    },
  
    getNumberOfItems(cart) {
      let ret = 0;
      for (ci of cart) {
        ret++;
      }
      return ret;
    }
  };
  