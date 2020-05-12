extends KinematicBody2D

const speed = 200
var velocity = Vector2()

func _physics_process(delta):

	if global_position.y < 570:
		velocity.y += 10
	if global_position. y >=570:
		position. y =570
		velocity. y = 0
	velocity.y +=20
	velocity.x = speed
	#move_and_slide(velocity,Vector2(0,-1))
	#if is_on_floor():
	if global_position. y ==570:
		$AnimatedSprite.play("Correr")
		velocity.y = 0
	if Input.is_action_just_pressed("Touch") and global_position. y ==570:
		velocity.y = -1000
		$AnimatedSprite.play("SALTO")
	move_and_slide(velocity,Vector2(1000,0))
	pass

func _on_Area2D_area_entered(area):
	#get_tree().call_group("UI","borrarUltimaVida")
	#función lista por si el cliente cambia 
	#de opinión sobre la UI. a terminar/consultar
	pass
	
