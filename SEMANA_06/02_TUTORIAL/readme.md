# Etapa 6 - CRUD: Create, Read, Update, Delete

Essa etapa tem por objetivo introduzir conceitos de criação, leitura, atualização e deleção de dados no banco de dados

## Glossário

### Relacionados ao seu repositório pessoal

- `Seu repositório`: seu repositório, existente na **sua conta do Github** criado a partir do [Template_Aluno](https://github.com/Intelihub/Template_Aluno), usado para todas as entregas individuais do módulo.
- `Seu diretório desta etapa`: diretório correspondente à etapa desta semana do tutorial no seu repositório (`02_TUTORIAL/Semana 6`).

### Relacionados ao repositório dos professores

- `Este repositório`: repositório [Tutorial_M2](https://github.com/Intelihub/Tutorial_M2) utilizado pelos professores para disponibilizar as etapas do tutorial do módulo e os exercícios individuais.
- `Este diretório`: diretório apresentado nesta página, correspondente a todos os arquivos disponibilizados à etapa desta semana do tutorial (`TUTORIAL_M2/SEMANA_06/02_TUTORIAL`).




## Preparação

Antes de começar a execução das instruções desta etapa:

1. Copie para o **seu diretório desta etapa** o conteúdo (todos os arquivos) do seu diretório da etapa anterior (`02_TUTORIAL/Semana 5`).

2. No **seu diretório desta etapa** (`02_TUTORIAL/Semana 6`), exclua o arquivo `app_51.js` do subdiretório `backend`.

## Instruções

Considerando arquivos presentes no **seu diretório desta etapa**:

1. No subdiretório `backend`, renomeie o arquivo `app_52.js` para `app_61.js`.
2. No arquivo `app_61.js`:
    2.1. Troque o número da porta (valor da variável `port`) de `3052` para `3061`.
    2.2. Substitua:

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
    por:
    ```javascript 
    /* Definição dos endpoints */

    /****** CRUD ******************************************************************/

    // Retorna todos registros (é o R do CRUD - Read)
    app.get('/users', (req, res) => {
        res.statusCode = 200;
        res.setHeader('Access-Control-Allow-Origin', '*'); // Isso é importante para evitar o erro de CORS

        var db = new sqlite3.Database(DBPATH); // Abre o banco
    var sql = 'SELECT * FROM tbUser ORDER BY title COLLATE NOCASE';
        db.all(sql, [],  (err, rows ) => {
            if (err) {
                throw err;
            }
            res.json(rows);
        });
        db.close(); // Fecha o banco
    });

    // Insere um registro (é o C do CRUD - Create)
    app.post('/userinsert', urlencodedParser, (req, res) => {
        res.statusCode = 200;
        res.setHeader('Access-Control-Allow-Origin', '*'); // Isso é importante para evitar o erro de CORS

        sql = "INSERT INTO tbUser (title, id, completed) VALUES ('" + req.body.title + "', 33, false)";
        var db = new sqlite3.Database(DBPATH); // Abre o banco
        db.run(sql, [],  err => {
            if (err) {
                throw err;
            }
        });
        db.close(); // Fecha o banco
        res.end();
    });

    // Atualiza um registro (é o U do CRUD - Update)
    app.post('/userupdate', urlencodedParser, (req, res) => {
        res.statusCode = 200;
        res.setHeader('Access-Control-Allow-Origin', '*'); // Isso é importante para evitar o erro de CORS

        sql = "UPDATE tbUser SET title = '" + req.body.title + "' WHERE userId = " + req.body.userId;
        var db = new sqlite3.Database(DBPATH); // Abre o banco
        db.run(sql, [],  err => {
            if (err) {
                throw err;
            }
            res.end();
        });
        db.close(); // Fecha o banco
    });

    // Exclui um registro (é o D do CRUD - Delete)
    app.post('/userdelete', urlencodedParser, (req, res) => {
        res.statusCode = 200;
        res.setHeader('Access-Control-Allow-Origin', '*'); // Isso é importante para evitar o erro de CORS

        sql = "DELETE FROM tbUser WHERE userId = " + req.body.userId;
        var db = new sqlite3.Database(DBPATH); // Abre o banco
        db.run(sql, [],  err => {
            if (err) {
                throw err;
            }
            res.end();
        });
        db.close(); // Fecha o banco
    });
    ```

3. No seu terminal, navegue até o subdiretório `backend` do seu diretório desta etapa e execute `node app_61.js` e teste cada um dos endpoints com o Postman e conferindo os resultados no banco, com o DBBrowser.

4. No arquivo `index.html` do subdiretório `frontend`:
	
	4.1. Substitua:
	```html
	<title>ETAPA 5</title>
	``` 
	por:
	```html
	<title>ETAPA 6</title>
	``` 
	
	
	4.2. Substitua:
	```html
	<h1>ETAPA 5</h1>
	Introdução a conceitos de banco de dados e backend
	``` 
	por:
	```html
	<h1>ETAPA 6</h1>
	CRUD (Create, Read, Update e Delete)
	``` 

    4.3. Na div `main`, após o botão "Calcular", adicione as seguintes linhas de HTML:
    ```html
    <div id="get" class="sections">
		<h3>PARTE 2 - Teste GET</h3>
		Resultados obtidos com a requisição GET:
	</div>
	<button onclick="TestGET()" class="button-get">Test GET</button>
    ```

5. No arquivo `style.css` do subdiretório `frontend`:

    5.1. Acrescente as linhas abaixo logo após as definições para a div `#calc`:
    ```css 
    #get{
        color: #a34f74;
    }
    ```

    5.2. Acrescente as linhas abaixo ao final do arquivo:
    ```css 
    .button-get{
        background-color: #a34f74;
    }
    ```

6. No arquivo `script.js` do subdiretório `frontend`:

    6.1. Adicione a linha a seguir logo após a definição da variável `calcResDiv`:
    ```javascript 
    var getResDiv = "#get";
    ```
    
    6.2. adicione ao final do arquivo a função a seguir:

    ```javascript
    /* Função que faz uma requisição GET */
    function TestGET(){
        var url = "https://jsonplaceholder.typicode.com/todos/1";

        var xhttp = new XMLHttpRequest();
        xhttp.open("GET", url, false);
        xhttp.send();//A execução do script pára aqui até a requisição retornar do servidor

        $(getResDiv).append("<br />" + xhttp.responseText);
        $(getResDiv).append("<br />Seleção do <i>title</i>: " + JSON.parse(xhttp.response).title);
        //console.log(xhttp.responseText);
    }
    ```

7. Teste o novo botão `Teste GET` da página `index.html` executando `app_61.js` no terminal e abrindo [localhost:3061](localhost:3061) no seu navegador para observar o seguinte resultado no texto acima desse botão:

```{ "userId": 1, "id": 1, "title": "delectus aut autem", "completed": false }```

**Caso não tenha conseguido conseguido executar algum ponto conforme aqui indicado, tire suas dúvidas com o instrutor de programação :)**

