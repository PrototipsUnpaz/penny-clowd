extends Node2D

func _ready():
	$Timer.start()
	$Control/Label.text = "X " + String(Vidas.vidasNivel)
	pass

func volver_a_iniciar():
	Vidas.items =0
	get_tree().change_scene("res://escenas/WorldTest.tscn")
	pass

func _on_Timer_timeout():
	volver_a_iniciar()
	pass 
