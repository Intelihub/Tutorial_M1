extends Node2D


#voltar ao menu principal
func _on_Button_pressed() -> void:
	get_tree().change_scene("res://telainicial.tscn")
