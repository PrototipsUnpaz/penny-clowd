extends KinematicBody2D

const SPEED = 300
var velocity = Vector2()

func _physics_process(delta):
	velocity.x = SPEED
	move_and_slide(velocity)
	pass
