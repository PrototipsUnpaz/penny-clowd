extends KinematicBody2D

const speed = -250
var velocity = Vector2()

func _ready():
	$Timer.start()
	pass

func _physics_process(_delta):
	if global_position.y < 350:
		velocity.y += 10
	if global_position. y >=350 and velocity.y >0:
		position. y =350
		velocity. y = 0
	velocity.y +=20
	velocity.x = speed
	if global_position. y ==350 and velocity.y >0:
		velocity.y = 0
	move_and_slide(velocity,Vector2(1000,0))
	pass

func _on_Area2D_area_entered(_area):
	Vidas.quitar_vida()
	queue_free()
	if Vidas.vidasNivel == 0:
		get_tree().change_scene("res://escenas/fin_del_juego/FinDelJuego.tscn")
	else:
		get_tree().change_scene("res://escenas/pantalla_negra/PantallaNegra.tscn")
	pass

func saltar():
	velocity.y = -1000
	pass

func _on_Timer_timeout():
	saltar()
	$Timer.start()
	pass



func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	pass 
