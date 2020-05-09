extends KinematicBody2D

const speed = 150
var velocity = Vector2()

func _physics_process(delta):
	velocity.y +=20
	velocity.x = speed
	move_and_slide(velocity,Vector2(0,-1))
	if is_on_floor():
		$AnimatedSprite.play("Correr")
		velocity.y = 0
	if Input.is_action_just_pressed("Touch") and is_on_floor():
		velocity.y = -580
		$AnimatedSprite.play("SALTO")
	move_and_slide(velocity)
	
	pass

	
func _on_Area2D_area_entered(area):
	get_tree().reload_current_scene()
	pass
