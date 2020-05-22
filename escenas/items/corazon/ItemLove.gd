extends Node2D



func _on_Area2D_area_entered(area):
	Vidas.itemLove = true
	Vidas.quitarItemLove = true
	Vidas.suma_items()
	Vidas.sumar_vida()
	queue_free()
	pass 
