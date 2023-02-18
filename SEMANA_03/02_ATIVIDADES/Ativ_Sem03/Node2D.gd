extends Node2D

#variaveis para atribuir texto
var lista_user #variavel do usuario
var lista #variavel pronta
var resp 

#adicionar texto 
var texto_user #variavel do usuario
var texto #variavel pronta


func _ready():
	pass


# LISTA QUE O USUARIO DIGITA
func _on_lista_user_pressed(): #Quando pressionar o botão 
	lista_user = str($dado1.text) #Atribuindo texto do dado no quadro branco
	resp = str(lista_user.split(' ')) #funcao split() -> separar texto com virgula
	
	$ColorRect/lab3.text = "Sua lista: " + resp #adicionando texto ao quadro de saida



# LISTA COM RESULTADO PRONTO 
func _on_lista_pressed():
	$ColorRect/lab3.text = "Lista: [12, 11, 10, 9]" #lista pronta



# TEXTO QUE USUARIO DIGITA
func _on_text_user_pressed():
	texto_user = $dado2.text #atribuindo texto digitado pelo usuario
	
	$ColorRect/lab3.text = " " + texto_user #atribuindo ao quadro de saida
	
	
# TEXTO COM RESULTADO PRONTO
func _on_text_pressed():
	texto = $texto.text
	
	$ColorRect/lab3.text = "Esse texto foi criado pela Ana Luisa"
	

