extends Node2D

func _ready():
	$Timer.start()
	pass

func volver_a_iniciar():
	get_tree().change_scene("res://escenas/WorldTest.tscn")
	pass

func _on_Timer_timeout():
	volver_a_iniciar()
	pass 