extends KinematicBody2D

#variaveis de movimentação
var andar = true
var motion = Vector2.ZERO;
var speed = 100

#definindo movimentações
#motion = para pular
#flip.h = para mudar a animação do personagem de acordo com a direção que ele caminha
func _process(delta):
	if andar:
		if is_on_floor():
			if Input.is_action_pressed("ui_up"):
				motion.y = -250;
		else:
			motion.y += 10
			
		if Input.is_action_pressed("ui_right"):
			motion.x = speed
			$"Gabe-idle-run".flip_h = false
			$"Gabe-idle-run/AnimationPlayer".play("desafio")
		elif Input.is_action_pressed("ui_left"):
			motion.x = -speed
			$"Gabe-idle-run".flip_h = true
			$"Gabe-idle-run/AnimationPlayer".play("desafio")
		else:
			motion.x = 0
	else:
		$"Gabe-idle-run/AnimationPlayer".stop("desafio")
	move_and_slide(motion, Vector2.UP)


#tela de game over quando personagem cai da plataforma
func _on_gameover_body_entered(body):
	get_tree().change_scene("res://gamerover.tscn")


#quando personagem principal encostar na sprite
#conclusão do jogo
func _on_Area2D_body_entered(body):
	$ColorRect.show()
	yield(get_tree().create_timer(3),"timeout")
	$ColorRect/Label.text = "Para encontrar o seu lar de volta..."
	yield(get_tree().create_timer(3),"timeout")
	$ColorRect/Label.text = "você precisará enfrentrar alguns inimigos"
	yield(get_tree().create_timer(3), "timeout")
	$ColorRect/Label.text = "Pule em cima deles para continuar o caminho para a casa..."
	get_tree().change_scene("res://desafio.tscn")
