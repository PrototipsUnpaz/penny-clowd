extends Node2D



func _on_Area2D_area_entered(_area):
	$AudioStreamPlayer.play()
	Vidas.itemLove = true
	Vidas.quitarItemLove = true
	Vidas.suma_items()
	Vidas.sumar_vida()
	queue_free()
	pass 
