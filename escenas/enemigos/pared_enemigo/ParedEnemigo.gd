extends Sprite


func _on_Area2D_area_entered(area):
	queue_free()
	get_tree().change_scene("res://escenas/pantalla negra/PantallaNegra.tscn")
	pass


func _on_VisibilityEnabler2D_screen_entered():
	print("visuaizado pared")
	pass 
