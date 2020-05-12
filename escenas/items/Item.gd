extends Node2D


func _on_Area2D_area_entered(area):
	Vidas.suma_items()
	Vidas.sumar_vida()
	queue_free()
	pass 
