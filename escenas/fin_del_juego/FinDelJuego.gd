extends Node2D

func _on_Button2_button_down():
	Vidas.vidasNivel = 3
	get_tree().change_scene('res://escenas/WorldTest.tscn')
	pass


func _on_Button_button_down():
	Vidas.vidasNivel = 3
	get_tree().change_scene("res://escenas/menu_principal/MenuPrincipal.tscn")
	pass 
