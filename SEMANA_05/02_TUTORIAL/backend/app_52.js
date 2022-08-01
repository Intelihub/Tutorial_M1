const express = require('express'); 
const app = express();

const hostname = '127.0.0.1';
const port = 3052;
const sqlite3 = require('sqlite3').verbose(); 
const DBPATH = 'dbUser.db'; 

const bodyParser = require('body-parser');
const urlencodedParser = bodyParser.urlencoded({ extended: false })

app.use(express.static("../frontend/"));

app.use(express.json());

app.get('/users', (req, res) => {
  res.statusCode = 200;
  res.setHeader('Access-Control-Allow-Origin', '*');

  var db = new sqlite3.Database(DBPATH);
  var sql = 'SELECT * FROM tbUser ORDER BY title COLLATE NOCASE';
  db.all(sql, [],  (err, rows ) => {
      if (err) {
          throw err;
      }
      res.json(rows);
  });
  db.close();
});


app.post('/userinsert', urlencodedParser, (req, res) => {
  res.statusCode = 200;
  res.setHeader('Access-Control-Allow-Origin', '*'); 

  sql = "INSERT INTO tbUser (title, id, completed) VALUES ('" + req.body.title + "', 33, false)";
  var db = new sqlite3.Database(DBPATH); 
  db.run(sql, [],  err => {
      if (err) {
          throw err;
      }
  });
  db.close();
  res.end();
});

app.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`);
});