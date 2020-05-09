extends AnimatedSprite
 
var activo = false

func _physics_process(delta):
	
	pass



func _on_Area2D_area_entered(area):
	pass






func _on_VisibilityNotifier2D_screen_entered():
	activo = true
	print("perom")
	pass # Replace with function body.


func _on_VisibilityNotifier2D_viewport_entered(viewport):
	activo = true
	print("perom")
	pass # Replace with function body.
