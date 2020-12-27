const exphbs = require('express-handlebars');

module.exports = function (app) {
    app.engine('hbs', exphbs({
      defaultLayout: 'main.hbs',
      extname: '.hbs',
    //   helpers: {
    //     section: hbs_sections(),
    //     format(val) {
    //       return numeral(val).format('0,0');
    //     }
    //   }
    }));
    app.set('view engine', 'hbs');
  }