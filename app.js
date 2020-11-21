const express = require('express');
const exphbs = require('express-handlebars');

const app = express();

app.engine('hbs', exphbs({
  defaultLayout: 'main.hbs',
  extname: '.hbs'
}));
app.set('view engine', 'hbs');
app.use(express.static('public'));
app.get('/', function (req, res) {
  // res.send('Hello World!');
  res.render('home', {
    layout: false
  });
});
const PORT = 4000;
app.listen(PORT, _ => {
  console.log(`Example app listening at http://localhost:${PORT}`);
});