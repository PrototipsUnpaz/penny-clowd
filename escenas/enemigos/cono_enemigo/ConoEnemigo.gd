extends Sprite



func _physics_process(delta):
	pass



func _on_Area2D_area_entered(area):
	Vidas.quitar_vida()
	queue_free()
	get_tree().change_scene("res://escenas/pantalla_negra/PantallaNegra.tscn")
	if Vidas.vidasNivel == -1:
		queue_free()
		get_tree().change_scene("res://escenas/fin_del_juego/FinDelJuego.tscn")
	pass
