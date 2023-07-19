extends KinematicBody2D

const SPEED = 200
const GRAVITY = 500
var velocity = Vector2.ZERO

func _physics_process(delta):
	var move_direction = 0
	if Input.is_action_pressed("ui_right"):
		move_direction += 1
	if Input.is_action_pressed("ui_left"):
		move_direction -= 1
	velocity.x = move_direction * SPEED
	velocity.y += GRAVITY * delta
	velocity = move_and_slide(velocity, Vector2.UP)
