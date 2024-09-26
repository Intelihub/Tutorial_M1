extends Node2D


func _ready() -> void:
	pass 
	
func _process(delta):
	pass

#quando o personagem colidir, irá aparecer o label
#dando um tempo para cada label aparecer
#no fim vai para a cena do desafio final
func _on_Area2D_body_entered(body: Node) -> void:
	$ColorRect.show()
	yield(get_tree().create_timer(3),"timeout")
	$ColorRect/Label.text = "Para reencontrar o seu lar..."
	yield(get_tree().create_timer(3),"timeout")
	$ColorRect/Label.text = "você precisará enfrentrar uma super plataforma"
	yield(get_tree().create_timer(3), "timeout")
	$ColorRect/Label.text = "Tome cuidado! Boa sorte..."
	get_tree().change_scene("res://desafio.tscn")

#tela de gameover quando personagem caí da plataforma
func _on_gameover_body_entered(body: Node) -> void:
	get_tree().change_scene("res://gamerover.tscn")
