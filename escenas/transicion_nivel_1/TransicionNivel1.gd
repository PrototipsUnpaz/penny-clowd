extends Node2D

func _ready():
	$Timer.start()
	pass

func ir_al_nivel_1():
	get_tree().change_scene("res://escenas/WorldTest.tscn")
	pass
	
func _on_Timer_timeout():
	ir_al_nivel_1()
	pass
