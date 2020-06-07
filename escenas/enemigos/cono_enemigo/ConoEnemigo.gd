extends Sprite



func _physics_process(delta):
	pass



func _on_Area2D_area_entered(area):
	Vidas.quitar_vida()
	queue_free()
	if Vidas.vidasNivel == 0:
		get_tree().change_scene("res://escenas/fin_del_juego/FinDelJuego.tscn")
	else:
		get_tree().change_scene("res://escenas/pantalla_negra/PantallaNegra.tscn")
	pass
