extends Node2D

func _ready() -> void:
	pass

#quando clicar no botão, reiniciar
func _on_Button_pressed():
	get_tree().change_scene("res://telainicial.tscn")
	print("fdfdssdfsdf")
