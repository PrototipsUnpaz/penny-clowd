extends StaticBody2D

func _on_Area2D_area_entered(area):
	get_tree().change_scene("res://escenas/nivel_2/Nivel2.tscn")
	pass 
