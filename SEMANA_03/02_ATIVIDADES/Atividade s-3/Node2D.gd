extends Node2D


func _on_Button_pressed():
	$ColorRect/RichTextLabel.text = "uva, maça e banana."

var dado1
var dado2
var resultado 
func _on_Button2_pressed():
	dado1 = float($dado1.text)
	dado2 = float($dado2.text)
	resultado = dado1 + dado2
	
	$ColorRect2/resultado.text = String(resultado)


func _on_Button3_pressed():
	$ColorRect3/resultado1.text = "São Paulo"
	


func _on_Button4_pressed():
	$ColorRect4/resultado2.text = str($idade.text)
