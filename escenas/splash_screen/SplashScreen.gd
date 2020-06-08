extends Node2D

func _ready():
	$Timer.start()
	pass

func ir_al_menu_principal():
	get_tree().change_scene("res://escenas/menu_principal/MenuPrincipal.tscn")
	pass

func _on_Timer_timeout():
	ir_al_menu_principal()
	pass
