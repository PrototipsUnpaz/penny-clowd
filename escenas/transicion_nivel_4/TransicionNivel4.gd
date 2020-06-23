extends Node2D


func _ready():
	$Timer.start()
	Vidas.nivelTres = false
	Vidas.nivelCuatro = true
	pass

func ir_al_nivel_4():
	get_tree().change_scene("res://escenas/nivel_4/Nivel4.tscn")
	pass
	
func _on_Timer_timeout():
	ir_al_nivel_4()
	pass
