extends KinematicBody2D

var speed = 200
var velocity = Vector2(0,0)
var deshabilitarMovimiento = false 

func _physics_process(_delta):
	if deshabilitarMovimiento == true:
		return
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
# warning-ignore:return_value_discarded
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
# warning-ignore:return_value_discarded
		move_and_slide(velocity,Vector2(1000,0))
	pass

func _on_Area2D_area_entered(area):
	if area.name == "Item" :
		$SonidoItem.play()
	if area.name == "FinalAnimacion" :
		deshabilitarMovimiento = true
		$SonidoSalto.volume_db = -24
		velocity = Vector2(0,0)
		$AnimationPlayer.play("RectaFinal")
		$AnimationPlayer.get_animation("RectaFinal").track_set_key_value(0,0, position)
		$AnimationPlayer.get_animation("RectaFinal").track_set_key_value(0,1, position + Vector2(281.741,0))
		$AnimationPlayer.get_animation("RectaFinal").track_set_key_value(0,2, position + Vector2 (333.068,-89.264))
		$AnimationPlayer.get_animation("RectaFinal").track_set_key_value(0,3, position + Vector2(391.09,-198.055))
		$AnimationPlayer.get_animation("RectaFinal").track_set_key_value(0,4, position + Vector2(519.965, -343.11))
		$AnimationPlayer.get_animation("RectaFinal").track_set_key_value(0,5, position + Vector2(563.482,-348.689))
		$AnimationPlayer.get_animation("RectaFinal").track_set_key_value(0,6, position + Vector2(612.577,-341.436))
		$AnimationPlayer.get_animation("RectaFinal").track_set_key_value(0,7, position + Vector2(661.672,-309.077))
		$AnimationPlayer.get_animation("RectaFinal").track_set_key_value(0,8, position + Vector2(725.273,-106.002))
		$Timer.start()
	if area.name == "Plataforma" :
		speed = 0
		velocity.x = 0
		$AnimatedSprite.play("Saludo")
	sonido_vida_extra()
	pass
	
func sonido_vida_extra():
	if Vidas.vidaExtra == true :
		$SonidoVidaObtenida.play()
		Vidas.vidaExtra = false
		pass

func _on_Timer_timeout():
	$AnimatedSprite.play("SALTO")
	$Timer.stop()
	pass 
