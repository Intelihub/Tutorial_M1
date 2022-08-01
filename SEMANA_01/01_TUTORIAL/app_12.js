const http    = require('http');
const sqlite3 = require('sqlite3').verbose(); 
const hostname = '127.0.0.1';
const port = 3012;

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/html');
  var db = new sqlite3.Database('dbUser.db');
  db.get('SELECT * \
          FROM tbUser \
          WHERE userId = 1', [], (err, row) => {
		res.write("<h1> Etapa 1 - INSTALACAO </h1>") 
    res.write("<h2> Servidor de Banco de Dados SQLite3 </h2>") 
	  res.write("<h3> " + row.title + "</h3>"); 
	  res.end(); 
   });
});
server.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`);
});