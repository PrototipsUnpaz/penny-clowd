extends Control



func _on_Jugar_button_down():
	get_tree().change_scene("res://escenas/transicion_nivel_1/TransicionNivel1.tscn")
	pass 


func _on_Creditos_button_down():
	get_tree().change_scene("res://escenas/creditos/Creditos.tscn")
	pass 


func _on_Salir_button_down():
	get_tree().quit()
	pass 
