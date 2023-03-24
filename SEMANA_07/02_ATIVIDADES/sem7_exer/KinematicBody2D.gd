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
			$"Gabe-idle-run/AnimationPlayer".play("direita")
		elif Input.is_action_pressed("ui_left"):
			motion.x = -speed
			$"Gabe-idle-run".flip_h = true
			$"Gabe-idle-run/AnimationPlayer".play("direita")
		else:
			motion.x = 0
	move_and_slide(motion, Vector2.UP)
