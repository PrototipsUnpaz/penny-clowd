extends KinematicBody2D

const SPEED = 300
var velocity = Vector2()

func _physics_process(delta):
	velocity.y +=20
	velocity.x = SPEED
	$AnimatedSprite.play("Correr")
	if Input.is_action_pressed("Touch"):
		velocity.y = -300
	move_and_slide(velocity)
	pass
