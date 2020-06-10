extends StaticBody2D

func _on_Area2D_area_entered(area):
	$Timer.start()
	$AudioStreamPlayer.play()
	
	pass 


func _on_Timer_timeout():
	get_tree().change_scene("res://escenas/transicion_nivel_2/TransicionNivel2.tscn")
	pass 
