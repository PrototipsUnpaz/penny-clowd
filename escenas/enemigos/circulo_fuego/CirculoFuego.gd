extends AnimatedSprite
 
var activo = false

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









func _on_VisibilityNotifier2D_viewport_entered(viewport):
	activo = true
	print("visualizado")
	pass # Replace with function body.
