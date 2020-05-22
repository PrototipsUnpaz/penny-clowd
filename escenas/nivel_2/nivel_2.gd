extends Node2D
var check_nivel2 = false
var nivel_2
func _on_Area2D_area_entered(area):
	check_nivel2 = true
	if check_nivel2 == true:
		nivel_2 = 2
	pass # Replace with function body.
