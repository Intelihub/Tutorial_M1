const express = require('express'); 
const app = express();

const hostname = '127.0.0.1';
const port = 3051;
const sqlite3 = require('sqlite3').verbose(); 
const DBPATH = 'dbUser.db'; 

app.use(express.static("../frontend/"));

app.use(express.json());

app.get('/user1', (req, res) => {
  res.statusCode = 200;
  //res.setHeader('Content-Type', 'text/html');
  res.setHeader('Access-Control-Allow-Origin', '*');
  var db = new sqlite3.Database(DBPATH);
  var sql = 'SELECT * FROM tbUser WHERE userId = 1';
  db.get(sql, [], (err, row) => {
      if (err) {
      throw err;
      }
      res.json(row);
      /*O código comentado abaixo é o que foi utilizado na etapa 1.
        
        Nele, ao invés a resposta (resultado da execução da cláusula
        sql - variável "sql" deste código) ser fornecida via json,
        como fazemos na linha acima deste comentário, uma página html
        era construída e o resultado era diretamente inserido no html, 
        como pode ser observado na última do código comentado abaixo.
        
        Observe ainda que essa forma de escrita do resultado em html, 
        é necessário indicar que o conteúdo é do tipo html -> comentário
        da linha 15 deste arquivo js*/
    
      //res.write("<h1> Teste do banco de dados</h1>") 
      //res.write("<h4> Informacoes do usuario cujo id = 1: </h2>") 
      //res.write("title = " + row.title); 
      //res.write("<br />completed = " + row.completed); 
  });
});

app.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`);
});