extends Node2D

#variaveis para atribuir texto
var lista_user
var lista
var resp

var texto_user
var texto


func _ready():
	pass


# LISTA DO USUARIO
func _on_lista_user_pressed():
	lista_user = str($dado1.text)
	resp = str(lista_user.split(' '))
	
	$ColorRect/lab3.text = "Sua lista: " + resp 



# LISTA COM RESULTADO
func _on_lista_pressed():
	$ColorRect/lab3.text = "Lista: [12, 11, 10, 9]"



# TEXTO DO USUARIO
func _on_text_user_pressed():
	texto_user = $dado2.text
	
	$ColorRect/lab3.text = " " + texto_user
	
# TEXTO COM RESULTADO
func _on_text_pressed():
	texto = $texto.text
	
	$ColorRect/lab3.text = "Esse texto foi criado pela Ana Luisa"
	

