extends KinematicBody2D

const speed = -200
var velocity = Vector2()


func _physics_process(delta):

	if global_position.y < 570:
		velocity.y += 10
	if global_position. y >=570:
		position. y =570
		velocity. y = 0
	velocity.y +=20
	velocity.x = speed
	if global_position. y ==570:
		#$AnimatedSprite.play("diabolo_m")
		velocity.y = 0
	move_and_slide(velocity,Vector2(1000,0))
	pass



func _on_Area2D_area_entered(area):
	Vidas.quitar_vida()
	queue_free()
	get_tree().change_scene("res://escenas/pantalla_negra/PantallaNegra.tscn")
	pass # Replace with function body.
