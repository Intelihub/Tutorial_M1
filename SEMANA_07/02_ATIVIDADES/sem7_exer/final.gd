extends Node2D

func _ready() -> void:
	pass 

#Quando apertar botao, reiniciar o jogo
func _on_Button_pressed() -> void:
	get_tree().change_scene("res://telainicial.tscn")
