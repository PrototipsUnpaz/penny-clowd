extends Node2D


func _on_Volver_button_down():
	$SonidoBoton.play()
	get_tree().change_scene("res://escenas/menu_principal/MenuPrincipal.tscn")
	pass 
