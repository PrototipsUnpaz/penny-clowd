extends Node2D

func _ready():
	$Timer.start()
	Vidas.nivelDos = false
	Vidas.nivelTres = false
	Vidas.nivelCuatro = false
	Vidas.nivelUno = false
	pass

func ir_al_nivel_1():
	get_tree().change_scene("res://escenas/WorldTest.tscn")
	pass
	
func _on_Timer_timeout():
	ir_al_nivel_1()
	pass
