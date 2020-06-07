extends KinematicBody2D

const speed = 200
var velocity = Vector2()


func _physics_process(delta):
	if Vidas.posPenny2 == false :
		if global_position.y < 570:
			velocity.y += 10
		if global_position. y >=570:
			position. y =570
			velocity. y = 0
		velocity.y +=20
		velocity.x = speed
		if global_position. y ==570:
			$AnimatedSprite.play("Correr")
			velocity.y = 0
		if Input.is_action_just_pressed("Touch") and global_position. y ==570:
			velocity.y = -1000
			$AnimatedSprite.play("SALTO")
			$SonidoSalto.play()
		move_and_slide(velocity,Vector2(1000,0))
	else:
		if global_position.y < 310:
			velocity.y += 10
		if global_position. y >=310:
			position. y =310
			velocity. y = 0
		velocity.y +=20
		velocity.x = speed
		if global_position. y ==310:
			$AnimatedSprite.play("Correr")
			velocity.y = 0
		if Input.is_action_just_pressed("Touch") and global_position. y ==310:
			velocity.y = -1000
			$AnimatedSprite.play("SALTO")
			$SonidoSalto.play()
		move_and_slide(velocity,Vector2(1000,0))
	pass

func _on_Area2D_area_entered(area):
	sonido_vida_extra()
	pass
	
func sonido_vida_extra():
	if Vidas.vidaExtra == true :
		$SonidoVidaObtenida.play()
		pass
		
		
