extends StaticBody2D

func _on_Area2D_area_entered(_area):
	$Timer.start()
	$AudioStreamPlayer.play()
	pass 


func _on_Timer_timeout():
	if Vidas.nivelUno == true :
		get_tree().change_scene("res://escenas/transicion_nivel_2/TransicionNivel2.tscn")
	if Vidas.nivelDos == true:
		get_tree().change_scene("res://escenas/transicion_nivel_3/TransicionNivel3.tscn")
	if Vidas.nivelTres == true :
		get_tree().change_scene("res://escenas/transicion_nivel_4/TransicionNivel4.tscn")
	if Vidas.nivelCuatro == true :
		get_tree().change_scene("res://escenas/fin_de_demo/FindeDemo.tscn")
	pass 
