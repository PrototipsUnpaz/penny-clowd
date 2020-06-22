extends Node2D

func volver_a_iniciar():
	get_tree().change_scene("res://escenas/transicion_nivel_1/TransicionNivel1.tscn")
	pass

func volver_nivel_2():
	get_tree().change_scene("res://escenas/transicion_nivel_2/TransicionNivel2.tscn")
	pass

func volver_nivel_3():
	get_tree().change_scene("res://escenas/transicion_nivel_3/TransicionNivel3.tscn")
	pass

func chequear_nivel_3():
	if Vidas.nivelTres == true:
		volver_nivel_3()
	else: 
		volver_a_iniciar()
	pass 

func _ready():
	$Timer.start()
	$Control/Label.text = "X " + String(Vidas.vidasNivel)
	$SonidoColision.play()
	pass


func _on_Timer_timeout():
	if Vidas.nivelDos == true:
		volver_nivel_2()
	else: 
		chequear_nivel_3()
	pass 
	
	

	
