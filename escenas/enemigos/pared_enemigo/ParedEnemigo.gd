extends Sprite


func _on_Area2D_area_entered(_area):
	Vidas.quitar_vida()
	queue_free()
	if Vidas.vidasNivel == 0:
		get_tree().change_scene("res://escenas/fin_del_juego/FinDelJuego.tscn")
	else:
		get_tree().change_scene("res://escenas/pantalla_negra/PantallaNegra.tscn")
	pass


func _on_VisibilityEnabler2D_screen_entered():
	print("visualizado pared")
	pass 
