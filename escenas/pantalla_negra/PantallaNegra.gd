extends Node2D

func volver_nivel_2():
	get_tree().change_scene("res://escenas/nivel_2/Nivel2.tscn")
	pass

func _ready():
	$Timer.start()
	$Control/Label.text = "X " + String(Vidas.vidasNivel)
	$SonidoColision.play()
	pass

func volver_a_iniciar():
	get_tree().change_scene("res://escenas/WorldTest.tscn")
	pass

func _on_Timer_timeout():
	if Vidas.nivelDos == false:
		volver_a_iniciar()
	else: 
		volver_nivel_2()
	pass 
