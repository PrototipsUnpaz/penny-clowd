extends KinematicBody2D

const speed = -300
var velocity = Vector2()


func _physics_process(delta):

	if global_position.y < 350:
		velocity.y += 10
	if global_position. y >=350:
		position. y =350
		velocity. y = 0
	velocity.y +=20
	velocity.x = speed
	if global_position. y ==350:
		#$AnimatedSprite.play("diabolo_m")
		velocity.y = 0
	move_and_slide(velocity,Vector2(1000,0))
	pass


func _on_Area2D_area_entered(area):
	Vidas.quitar_vida()
	queue_free()
	get_tree().change_scene("res://escenas/pantalla_negra/PantallaNegra.tscn")
	if Vidas.vidasNivel == -1:
		queue_free()
		get_tree().change_scene("res://escenas/fin_del_juego/FinDelJuego.tscn")
	pass
