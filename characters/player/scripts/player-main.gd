extends CharacterBody2D

@export var move_speed: int = 50

func handle_input():
	var move_direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down", )
	velocity = move_direction * move_speed

func _physics_process(delta):
	handle_input()
	move_and_slide()
