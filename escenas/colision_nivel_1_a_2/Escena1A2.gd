extends StaticBody2D

func _on_Area2D_area_entered(area):
	get_tree().change_scene("res://escenas/transicion_nivel_1/TransicionNivel1.tscn")
	pass 
