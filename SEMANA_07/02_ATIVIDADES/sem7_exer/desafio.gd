extends Node2D



#funcao para que o colorRect apareca e aconteca o dialogo do jogo
func _on_Area2D_body_entered(body):
	$ColorRect.show()
	$ColorRect/Label.text = "Gabe, você conseguiu"
	yield(get_tree().create_timer(3),"timeout")
	$ColorRect/Label.text = "seus amigos estão ali em frente"
	yield(get_tree().create_timer(3), "timeout")
	$ColorRect/Label.text = "Encontrou seu lar de volta..."
	yield(get_tree().create_timer(3), "timeout")
	$ColorRect/Label.text = "Até a proxima aventura!"
	yield(get_tree().create_timer(3), "timeout")
	get_tree().change_scene("res://final.tscn")
