# Etapa 1 - Setup do ambiente

Essa etapa tem por objetivo testar a instalação do Node.js, Sqlite3, verificar se está funcionando corretamente e também as feramentas necessárias para desenvolvimento do projeto

## Passo-a-passo

### Instalações

1. Baixar e instalar o Node.js: [https://nodejs.org/pt-br/](https://nodejs.org/pt-br/)
2. Baixar e instalar o DB Browser for SQLite: [https://sqlitebrowser.org/](https://sqlitebrowser.org/)
3. Baixar e instalar o Postman: [https://www.postman.com/downloads/](https://www.postman.com/downloads/)
4. Baixar e instalar o VS Code:  [https://code.visualstudio.com/download](https://code.visualstudio.com/download)
5. Crie uma conta no brModeloWeb:  [https://www.brmodeloweb.com/lang/pt-br/index.html](https://www.brmodeloweb.com/lang/pt-br/index.html)
6. Abra o "Prompt de Comando" (Windows) no modo administrador ou "Terminal" (Mac) e digite:

   `npm install sqlite3`
   
   `npm install express --save`

7. GitHub:
  
   > \* Baixar e instalar o GitHub Desktop se ainda não a tiver instalada

   > 1. Clonar este repositório repositório (File-Clone Repository) na sua máquina (aba URL da tela de "Clone Repository") [https://github.com/Intelihub/Tutorial_M2/](https://github.com/Intelihub/Tutorial_M2/) escolhendo um diretório (pasta) do seu computador para que esse repositório do git seja clonado (Ex: C:\MODULO02_TUTORIAL).

   > \* Criar conta pessoal (com e-mail Inteli) ou entrar na sua conta se já a tiver

   > 2. Fork do repositório Template: [https://github.com/Intelihub/Template_Aluno](https://github.com/Intelihub/Template_Aluno), dando o nome `modulo2`.
   
   > \* Indicamos usar a versão web do Github para fazer a cópia desse diretório do Template que cada aluno deve ter no seu repositório individual (1.acesse o repositório do link supracitado; 2. clique no botão `Fork` ou `Garfo`, se seu Github estiver em português, localizado no canto superior direito da página, logo abaixo da barra de menu do Github; e 3. dê o nome de `modulo 2` para o novo repositório).

   > 3. Clone esse repositório `modulo2` na sua máquina.


### Instruções

1. Copie os arquivos abaixo **deste** diretório para pasta `02_TUTORIAL/Semana 1` do **seu** GitHub:
   
	- `app_11.js`
	- `app_12.js`
	- `app_13.js`
	- `dbUser.db`

2. Abra o "Prompt de Comando" (Windows) no modo Administrator ou "Terminal" (Mac), navegue até o diretório `SEMANA_01/02_TUTORIAL` do **seu** GitHub e execute:

	`node app_11.js`

	**Confira o resultado no NAVEGADOR:** [http://127.0.0.1:3011/](http://127.0.0.1:3011/)

	`Etapa 1 - INSTALACAO - Servidor Node.js`

	`Meu servidor NODE.js funciona!`
	
3. Semelhante ao feito em `2`, execute:

	\* Para executar os comandos a seguir na mesma janela do terminal, você pode encerrar o processo iniciado pelo comando do passo `2` utilizando o atalho `CTRL + C`! Note que, dessa forma, o resultado do passo 2 não estará mais disponível (link [http://127.0.0.1:3011/](http://127.0.0.1:3011/) não funcionará mais), pois o servidor que estava rodando na porta 3011 terá sido encerrado.


	`npm install sqlite3`

  	`node app_12.js`
   
	**Confira o resultado no NAVEGADOR:** [http://127.0.0.1:3012/](http://127.0.0.1:3012/)

	`Etapa 1 - INSTALACAO`
   
	`Servidor de Banco de Dados SQLite3`
   
	`Usuario de teste lido com sucesso`

4. Semelhante ao feito em `2` e `3`, execute:

	`node app_13.js`

	**Confira o resultado no NAVEGADOR:** [http://127.0.0.1:3013/?nome=andre](http://127.0.0.1:3013/?nome=andre)
	
	`Etapa 1 - INSTALACAO - EndPoint "GET"`
   
	`Hello andre voce conseguiu um GET! bem sucedido`

### Conclusão
Se os resultados observados no navegador para os itens `2`, `3` e `4` das instruções foram os mesmos dos descritos nos itens, seus testes de instalação estão todos ok :)

**Caso algum ponto não tenha conseguido conforme esperado, aguarde a instrução da semana na qual todas as dúvidas serão solucionadas!**
