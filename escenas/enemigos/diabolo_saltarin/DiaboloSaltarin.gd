extends KinematicBody2D

const speed = -250
var velocity = Vector2()

func _ready():
	$Timer.start()
	pass

func _physics_process(delta):
	if global_position.y < 570:
		velocity.y += 10
	if global_position. y >=570 and velocity.y >0:
		position. y =570
		velocity. y = 0
	velocity.y +=20
	velocity.x = speed
	if global_position. y ==570 and velocity.y >0:
		velocity.y = 0
	move_and_slide(velocity,Vector2(1000,0))
	pass

#DE ACÁ PARA ABAJO HAY FUNCIONES PARA QUE 
#SALTE CON TIMER, incluyendo el timer de la línea 07:
func _on_Area2D_area_entered(area):
	Vidas.quitar_vida()
	queue_free()
	get_tree().change_scene("res://escenas/pantalla_negra/PantallaNegra.tscn")
	pass 

func saltar():
	velocity.y = -1000
	pass

func _on_Timer_timeout():
	saltar()
	pass

