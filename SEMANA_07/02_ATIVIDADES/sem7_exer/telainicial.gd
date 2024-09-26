extends Node2D


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass 

#mudanca de cena para a cena introdutória
func _on_Button_pressed() -> void:
	get_tree().change_scene("res://cena2.tscn")

#ir para a tela tutorial
func _on_tutorial2_pressed() -> void:
	get_tree().change_scene("res://tutorial.tscn")
