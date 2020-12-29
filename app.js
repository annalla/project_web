const express = require('express');
require('express-async-errors');
const exphbs = require('express-handlebars');

const app = express();

app.use(express.urlencoded({
  extended: true
}));

app.use('/public',express.static('public'));

require('./middlewares/view.mdw')(app);
require('./middlewares/locals.mdw')(app);
require('./middlewares/routes.mdw')(app);




require('./middlewares/error.mdw')(app);// phải để cuối cùng

const PORT = 3000;
app.listen(PORT, _ => {
  console.log(`Example app listening at http://localhost:${PORT}`);
});