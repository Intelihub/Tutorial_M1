# Etapa 4 - Introdução a JQuery

Essa etapa tem por objetivo mostrar como aplicar JQuery pode ser aplicado para facilitar a construção dos scripts JS da aplicação web.
  
  
## Glossário

### Relacionados ao seu repositório pessoal

- `Seu repositório`: seu repositório, existente na **sua conta do Github** criado a partir do [Template_Aluno](https://github.com/Intelihub/Template_Aluno), usado para todas as entregas individuais do módulo.
- `Seu diretório desta etapa`: diretório correspondente à etapa desta semana do tutorial no seu repositório (`02_TUTORIAL/Semana3`).

### Relacionados ao repositório dos professores

- `Este repositório`: repositório [Tutorial_M2](https://github.com/Intelihub/Tutorial_M2) utilizado pelos professores para disponibilizar as etapas do tutorial do módulo e os exercícios individuais.
- `Este diretório`: diretório apresentado nesta página, correspondente a todos os arquivos disponibilizados à etapa desta semana do tutorial (`TUTORIAL_M2/SEMANA_04/02_TUTORIAL`).




## Preparação

Antes de começar a execução das instruções desta etapa, copie para o **seu diretório desta etapa** o conteúdo (todos os arquivos) do seu diretório da etapa anterior (`02_TUTORIAL/Semana 4`).

* Perceba que a partir dessa etapa, você deve criar o diretório da semana no seu respositório :)


## Instruções

Considerando arquivos presentes no **seu diretório desta etapa**:

1. No arquivo `index.html` do subdiretório `frontend`:
	
	1.1. Insira a linha abaixo no `head`:
	```html 
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>	
	``` 
	
	
	1.2. Substitua:
	```html
	<title>ETAPA 3</title>
	``` 
	por:
	```html
	<title>ETAPA 4</title>
	``` 
	
	
	1.3. Substitua:
	```html
	<h1>ETAPA 3</h1>
	Introdução a Javascript
	``` 
	por:
	```html
	<h1>ETAPA 4</h1>
	Introdução a Jquery
	``` 

2. No arquivo `script.js` do subdiretório `frontend`:
  
  2.1. Substitua:
  ```javascript
  var calcResDiv = "calc";
  ```
  por:
  ```javascript
  var calcResDiv = "#calc";
  ```
  
  2.2. Substitua:
  ```javascript
  document.onreadystatechange = function () {
      if (document.readyState == "complete") {
          var x0 = 10;
          var y0 = 20;
          // Alternativa equivalente: var x0 = 10, y0 = 20;
          CalcAddAndShow(x0, y0);
    }
  }
  ```
  por:
  ```javascript
  $(document).ready( function() {
      var x0 = 10, y0 = 20;
      CalcAddAndShow(x0, y0);
  });
  ```
  
  2.3. Substitua:
  ```javascript
  function ShowOp(x, y, op){
      document.getElementById(calcResDiv).innerHTML += `<br /> ${x} ${op} ${y} = `;
      //Alternativa: .. += "<br />" + x + " " + op + " " + y + " = "
  }
  ```
  por:
  ```javascript
  function ShowOp(x, y, op){
      $(calcResDiv).append(`<br />${x} ${op} ${y} = `);
      //Alternativa: .. += "<br />" + x + " " + op + " " + y + " = "
  }
  ```
  
  2.4. Substitua:
  ```javascript
  function ShowResult(res){
      document.getElementById(calcResDiv).innerHTML += res;
  }

  ```
  por:
  ```javascript
  function ShowResult(res){
      $(calcResDiv).append(res);
  }
  ```
  
2. No subdiretório `backend`, renomeie o arquivo `app_31.js` para `app_41.js`.
3. No arquivo `app_41.js`, troque o número da porta (valor da variável `port` - linha 5) de `3031` para `3041`.
4. Abra seu terminal, navegue até o subdiretório `backend` do seu diretório desta etapa e execute `node app_41.js`.
5. Abra no navegador o endereço que consta no terminal (`localhost:3041`) e observe a linha informando o cálculo que foi realizado via script javascript com jquery e seu respectivo resultado. Observe ainda que o funcionamento do botão permanece o mesmo: clicando nele, um novo cálculo é realizado e aparece na página.

**Caso não tenha conseguido conseguido executar algum ponto conforme aqui indicado, tire suas dúvidas com o instrutor de programação :)**

