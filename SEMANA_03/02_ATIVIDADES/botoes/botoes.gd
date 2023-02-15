extends Node2D

var velo = 10
var right = false
var left = false
var up = false
var down = false
var pressed = false
var resolucao_y = true

func _process(delta):
	if Input.is_action_pressed("ui_right") and $engordot.position.x < 1024 - 32:
		$engordot.move_local_x(velo)
	elif Input.is_action_just_released ("ui_right") and pressed == true:
		right = true
	if right and $engordot.position.x < 1024 - 32:
		$engordot.move_local_x(velo)
		left = false

	if Input.is_action_pressed("ui_left") and $engordot.position.x > 32:
		$engordot.move_local_x(-velo)
	elif Input.is_action_just_released ("ui_left") and pressed == true:
		left = true
	if left and $engordot.position.x > 32:
		$engordot.move_local_x(-velo)
		right = false

	if Input.is_action_pressed("ui_up") and $engordot.position.y > 32:
		$engordot.move_local_y(-velo)
	elif Input.is_action_just_released ("ui_up") and pressed == true:
		up = true
	if up and $engordot.position.y > 32:
		$engordot.move_local_y(-velo)
		down = false

	resolucao_y = $engordot.position.y < 600 - 32
	if Input.is_action_pressed("ui_down") and resolucao_y:
		$engordot.move_local_y(velo)
	elif Input.is_action_just_released ("ui_down") and pressed == true:
		down = true
	if down and resolucao_y:
		$engordot.move_local_y(velo)
		up = false




func _on_Button_button_down():
	velo = 2*velo # Replace with function body.


func _on_nao_para_button_down():
	pressed = true # Replace with function body.
	return pressed
