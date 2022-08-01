
# Etapa 3 - Introdução a Javascript

  

Esta etapa tem por objetivo mostrar como aplicar Javascript para incluir scripts com lógica algorítmica na sua aplicação web.

  
## Glossário

### Relacionados ao seu repositório pessoal

- `Seu repositório`: seu repositório, existente na **sua conta do Github** criado a partir do [Template_Aluno](https://github.com/Intelihub/Template_Aluno), usado para todas as entregas individuais do módulo.
- `Seu diretório desta etapa`: diretório correspondente à etapa desta semana do tutorial no seu repositório (`02_TUTORIAL/Semana3`).

### Relacionados ao repositório dos professores

- `Este repositório`: repositório [Tutorial_M2](https://github.com/Intelihub/Tutorial_M2) utilizado pelos professores para disponibilizar as etapas do tutorial do módulo e os exercícios individuais.
- `Este diretório`: diretório apresentado nesta página, correspondente a todos os arquivos disponibilizados à etapa desta semana do tutorial (`TUTORIAL_M2/SEMANA_03/02_TUTORIAL`).




## Preparação

Antes de começar a execução das instruções desta etapa:
1. Copie para o **seu diretório desta etapa** o conteúdo (todos os arquivos) do seu diretório da etapa anterior (`02_TUTORIAL/Semana 2`).
2. No **seu diretório desta etapa** (`02_TUTORIAL/Semana 3`), exclua os seguintes arquivos: 
	- do subdiretório `frontend`: `index1.html`, `index2.html`, `index3.html` e o subdiretório `css`.
	- do subdiretório `backend`: `app_21.js`.
4. Copie os arquivos `script.js` e `style.css`  do subdiretório `frontend` **deste diretório** para o subdiretório `frontend` do **seu diretório desta etapa**.

## Instruções

Considerando arquivos presentes no **seu diretório desta etapa**:
1. No arquivo `index.html` do subdiretório `frontend`:
	1.1. Substitua  
	```html 
	<title>Etapa 2</title>
	``` 
	por:
	```html 
	<title>ETAPA 3</title>
	<link rel="stylesheet" href="style.css" />	
	<script src="script.js"></script>
	```
	1.2. Substitua:
	```html
	<div id="main"> Etapa 2 - Hello World </div> 
	<h1> Minha primeira pagina </h1>
	``` 
	por:
	```html
	<div id="main">
	<h1>ETAPA 3</h1>
	Introdução a Javascript
		<div id="calc" class="sections">
			<h3>PARTE 1 - Cálculos</h3>
			Cálculos realizados e respectivos resultados obtidos:
		</div>
		<button onclick="CalcAddAndShow(10, 50)" class="button-calc">Calcular 10 + 50</button>
	</div>
	``` 

2. Renomeie o arquivo `app_22.js` para `app_31.js`.
3. No arquivo `app_31.js`, troque o número da porta (valor da variável `port` - linha 6) de `3022` para `3031`.
4. Abra seu terminal, navegue até o subdiretório `backend` do seu diretório desta etapa e execute `node app_31.js`.
5. Abra no navegador o endereço que consta no terminal (`localhost:3031`) e observe a linha informando o cálculo que foi realizado via script javascript e seu respectivo resultado. Observe ainda que clicando no botão, um novo cálculo é realizado e aparece também na página.

**Caso não tenha conseguido conseguido executar algum ponto conforme aqui indicado, tire suas dúvidas com o instrutor de programação :)**
