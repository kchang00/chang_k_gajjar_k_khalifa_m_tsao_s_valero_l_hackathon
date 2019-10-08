const express = require('express');
const hbs = require('hbs');
const path = require('path');
const sql = require('./utils/sql');
const port = process.env.PORT || 3000;


const app = express();

// use the public directory when you need a path
app.use(express.static('public'));

app.set('view engine', 'hbs');
app.set('views', __dirname + "/views");

// main route, default view -> layout.hbs
app.get('/', (req,res) => {
    sql.getConnection((err, connection) => {
    if (err) {
      return console.log(err.message);
    }

    let query = "SELECT * FROM tbl_hero, tbl_display, tbl_feature";

    sql.query(query, (err, rows) => {
      // we're done with our database connection, so let someone else use it
      connection.release();

      // if something broke, quit and show an error message
      if (err) { return console.log(err.message); }

      // show me the data
      console.log(rows);

      res.render('home', rows[0]);
    })
  })
})

app.listen(port, () => {
  console.log(`app is running on port ${port}`);
})