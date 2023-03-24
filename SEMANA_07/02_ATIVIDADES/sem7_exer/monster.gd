extends KinematicBody2D

#variavel
var health = 1

#funcao para inimigo andar
func _physics_process(delta):
	pass


#contagem de vida para o inimigo perder vida quando atingido
#fazendo sumir ao fim da vida
func _on_Area2D_body_entered(body: Node) -> void:
	health = -1
	$AnimationPlayer.play("hit")
	if health < 1:
		queue_free()

#personagem principal quando encosta no inimigo, volta para o começo do nível
func _on_Area2D2_body_entered(body: Node) -> void:
	get_tree().change_scene("res://desafio.tscn")
