extends Node2D


func _on_Area2D_area_entered(area):
	Vidas.items +=1
	Vidas.sumar_vida()
	queue_free()
	pass 
