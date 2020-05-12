extends Sprite



func _physics_process(delta):
	pass



func _on_Area2D_area_entered(area):
	queue_free()
	get_tree().change_scene("res://escenas/pantalla_negra/PantallaNegra.tscn")
	pass
