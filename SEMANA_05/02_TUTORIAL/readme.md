# Etapa 5 - Introdução a conceitos de banco de dados e backend

Essa etapa tem por objetivo introduzir conceitos de banco de dados e backend

## Glossário

### Relacionados ao seu repositório pessoal

- `Seu repositório`: seu repositório, existente na **sua conta do Github** criado a partir do [Template_Aluno](https://github.com/Intelihub/Template_Aluno), usado para todas as entregas individuais do módulo.
- `Seu diretório desta etapa`: diretório correspondente à etapa desta semana do tutorial no seu repositório (`02_TUTORIAL/Semana 5`).

### Relacionados ao repositório dos professores

- `Este repositório`: repositório [Tutorial_M2](https://github.com/Intelihub/Tutorial_M2) utilizado pelos professores para disponibilizar as etapas do tutorial do módulo e os exercícios individuais.
- `Este diretório`: diretório apresentado nesta página, correspondente a todos os arquivos disponibilizados à etapa desta semana do tutorial (`TUTORIAL_M2/SEMANA_05/02_TUTORIAL`).




## Preparação

Antes de começar a execução das instruções desta etapa:

1. Copie para o **seu diretório desta etapa** o conteúdo (todos os arquivos) do seu diretório da etapa anterior (`02_TUTORIAL/Semana 4`).

2. Copie para o **seu diretório desta etapa** o arquivo `dbUser.db` do subdiretório `backend` **deste diretório** (`TUTORIAL_M2/SEMANA_05/02_TUTORIAL/backend`).

## Instruções

Considerando arquivos presentes no **seu diretório desta etapa**:

1. No arquivo `index.html` do subdiretório `frontend`:
	
	1.1. Substitua:
	```html
	<title>ETAPA 4</title>
	``` 
	por:
	```html
	<title>ETAPA 5</title>
    
	``` 
	
	
	1.3. Substitua:
	```html
	<h1>ETAPA 4</h1>
	Introdução a Jquery
	``` 
	por:
	```html
	<h1>ETAPA 5</h1>
	Introdução a conceitos de banco de dados e backend
	``` 

2. No subdiretório `backend`, renomeie o arquivo `app_41.js` para `app_51.js`.
3. No arquivo `app_51.js`:
    3.1. Troque o número da porta (valor da variável `port`) de `3041` para `3051`.
    3.2. Insira as linhas abaixo logo após a definição da porta: 
    ```javascript
    const sqlite3 = require('sqlite3').verbose(); 
    const DBPATH = 'dbUser.db'; 
    ```
    3.2. Insira as linhas abaixo logo após a instrução `app.use(express.static("../frontend/"));`: 
    ```javascript
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
    ```
4. Abra seu terminal, navegue até o subdiretório `backend` do seu diretório desta etapa e execute `node app_51.js`.
5. Abra o navegador e digite o endereço do endpoint `user1` criado (`http://127.0.0.1:3051/user1`) e observe a resposta recebida na página:
```json
{
    "userId": 1,
    "id": 1,
    "title": "delectus aut autem",
    "completed": 0
}
```

6. Abra o Postman, digite o endereço do endpoint `user1` criado (`http://127.0.0.1:3051/user1`) na barra de texto com a mensagem placeholder "Enter request URL" e observe no painel inferior (Aba "Body") a resposta - mesmo json recebido no passo anterior:
```json
{
    "userId": 1,
    "id": 1,
    "title": "delectus aut autem",
    "completed": 0
}
```
> A vantagem de utilizarmos o Postman é que quando o método não for o GET, também conseguimos acessar, como será mostrado nos próximos passos.

7. Crie uma cópia do arquivo `app_51.js` e renomeie essa cópia para `app_52.js`.

8. No arquivo `app_52.js`:

    8.1. Troque o número da porta (valor da variável `port`) de `3051` para `3052`.

    8.2. Adicione as linhas abaixo logo após a definição da variável `DBPATH` (adicionada no passo 3.2):

    ```javascript
    const bodyParser = require('body-parser');
    const urlencodedParser = bodyParser.urlencoded({ extended: false })
    ```

    8.3. Substitua:

    ```javascript
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
    ```
    por:
    ```javascript 
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
    ```

9. No seu terminal, navegue até o subdiretório `backend` do seu diretório desta etapa e execute `node app_52.js`.

10. Abra o Postman, digite o endereço do endpoint `users` criado (`http://127.0.0.1:3052/users`) na barra de texto com a mensagem placeholder "Enter request URL" e observe no painel inferior (Aba "Body") a resposta:

```json
[
    {
        "userId": 1,
        "id": 1,
        "title": "delectus aut autem",
        "completed": 0
    },
    {
        "userId": 2,
        "id": 2,
        "title": "Fabiano Junior",
        "completed": 1
    }
]
```

> O segundo endpoint criado em `app_52.js` será testado durante a instrução.

**Caso não tenha conseguido conseguido executar algum ponto conforme aqui indicado, tire suas dúvidas com o instrutor de programação :)**
