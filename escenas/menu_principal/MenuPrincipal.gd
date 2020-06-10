extends Control

func _ready():
	$Label.modulate = Color (1,1,1,0.7)
	$Soundtrack.play()

func _on_Jugar_button_down():
	$SonidoBoton.play()
	get_tree().change_scene("res://escenas/transicion_nivel_1/TransicionNivel1.tscn")
	pass 


func _on_Creditos_button_down():
	$SonidoBoton.play()
	get_tree().change_scene("res://escenas/creditos/Creditos.tscn")
	pass 


func _on_Salir_button_down():
	$SonidoBoton.play()
	get_tree().quit()
	pass 
