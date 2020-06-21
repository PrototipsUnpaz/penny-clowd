extends Node2D

func _ready():
	$Timer.start()
	pass

func ir_al_nivel_3():
	get_tree().change_scene("res://escenas/nivel_3/Nivel3.tscn")
	pass
	
func _on_Timer_timeout():
	ir_al_nivel_3()
	pass
