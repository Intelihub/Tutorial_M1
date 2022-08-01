# Etapa 7 - Integração front-end e back-end e AJAX (Asynchronous Javascript And XML)

Essa etapa tem por objetivo demonstrar como integrar front e back-end e introduzir os conceitos relacionados a AJAX.

## Glossário

### Relacionados ao seu repositório pessoal

- `Seu repositório`: seu repositório, existente na **sua conta do Github** criado a partir do [Template_Aluno](https://github.com/Intelihub/Template_Aluno), usado para todas as entregas individuais do módulo.
- `Seu diretório desta etapa`: diretório correspondente à etapa desta semana do tutorial no seu repositório (`02_TUTORIAL/Semana 7`).

### Relacionados ao repositório dos professores

- `Este repositório`: repositório [Tutorial_M2](https://github.com/Intelihub/Tutorial_M2) utilizado pelos professores para disponibilizar as etapas do tutorial do módulo e os exercícios individuais.
- `Este diretório`: diretório apresentado nesta página, correspondente a todos os arquivos disponibilizados à etapa desta semana do tutorial (`TUTORIAL_M2/SEMANA_07/02_TUTORIAL`).




## Preparação

Antes de começar a execução das instruções desta etapa:

1. Copie para o **seu diretório desta etapa** o conteúdo (todos os arquivos) do seu diretório da etapa anterior (`02_TUTORIAL/Semana 6`).

2. Copie para o **seu diretório desta etapa** o subdiretório `src2` do diretório `frontend` **deste diretório** (`TUTORIAL_M2/SEMANA_07/02_TUTORIAL/frontend`).

## Instruções

Considerando arquivos presentes no **seu diretório desta etapa**:

1. No subdiretório `backend`, renomeie o arquivo `app_61.js` para `app_71.js`.
2. No arquivo `app_71.js`, troque o número da porta (valor da variável `port`) de `3061` para `3071`.
3. No arquivo `index.html` do subdiretório `frontend`:
	
	4.1. Substitua:
	```html
	<title>ETAPA 6</title>
	``` 
	por:
	```html
	<title>ETAPA 7</title>
	``` 
	
	
	4.2. Substitua:
	```html
	<h1>ETAPA 6</h1>
	CRUD (Create, Read, Update e Delete)
	```
	por:
	```html
	<h1>ETAPA 7</h1>
	Integração front-end e back-end e AJAX
	```

    4.3. Na div `main`, após o botão "Test GET", adicione as seguintes linhas de HTML:
    ```html
    <div id="getDB" class="sections">
		<h3>Resultado GET FROM DB</h3>
		Resultados obtidos com a requisição GET no nosso banco:
	</div>
	<button onclick="TestGETDB()" class="button-get-db">GET FROM DB</button>
    ```

5. No arquivo `style.css` do subdiretório `frontend`:

    5.1. Acrescente as linhas abaixo logo após as definições para a div `#get`:
    ```css 
    #getDB{
	    color: #5b4696; 
    }
    ```

    5.2. Acrescente as linhas abaixo ao final do arquivo:
    ```css 
    .button-get-db{
        background-color: #5b4696;
    }
    ```

6. No arquivo `script.js` do subdiretório `frontend`:

    6.1. Adicione a linha a seguir logo após a definição da variável `getResDiv`:
    ```javascript 
    var getDBResDiv = "#getDB";
    ```
    
    6.2. adicione ao final do arquivo a função a seguir:

    ```javascript
    /* Função que faz uma requisição GET */
    function TestGETDB(){
        var url = "http://127.0.0.1:3071/users";
        var resposta;

        var xhttp = new XMLHttpRequest();
        xhttp.open("GET", url, false);
        xhttp.send();//A execução do script pára aqui até a requisição retornar do servidor

        resposta = JSON.parse(xhttp.responseText);
        
        $(getDBResDiv).append("<br /><br />" + JSON.stringify(resposta));
        $(getDBResDiv).append("<br /><br />* Seleção do atributo 'title' do primeiro usuario:<br />" + resposta[0].title);
        //console.log(xhttp.responseText);
    }
    ```

7. Teste o novo botão `Teste GET` da página `index.html` executando `app_71.js` no terminal e abrindo [localhost:3071](localhost:3071) no seu navegador para observar o seguinte resultado no texto acima desse botão:

```[{"userId":1,"id":1,"title":"delectus aut autem","completed":0},{"userId":2,"id":2,"title":"Fabiano Junior","completed":1}] * Seleção do atributo 'title' do primeiro usuario: delectus aut autem ```

8. Abra a página index do diretório `src2` do `frontend`, acessando [localhost:3071/src2](localhost:3071/src2), e observe o funcionamento dessa página observando o código do arquivo `script.js` desse subsiretório `scr2`. Preste atenção especial ao funcionamento das chamadas ajax!

**Caso não tenha conseguido conseguido executar algum ponto conforme aqui indicado, tire suas dúvidas com o instrutor de programação :)**
