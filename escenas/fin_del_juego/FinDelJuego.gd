extends Node2D

func _ready():
	$Soundtrack.play()

func _on_Button2_button_down():
	$Boton.play()
	Vidas.vidasNivel = 3
	get_tree().change_scene('res://escenas/transicion_nivel_1/TransicionNivel1.tscn')
	pass


func _on_Button_button_down():
	$Boton.play()
	Vidas.vidasNivel = 3
	get_tree().change_scene("res://escenas/menu_principal/MenuPrincipal.tscn")
	pass 
