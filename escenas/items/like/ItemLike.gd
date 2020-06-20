extends Node2D



func _on_Area2D_area_entered(_area):
		$AudioStreamPlayer.play()
		Vidas.itemLike = true
		Vidas.quitarItemLike = true
		Vidas.suma_items()
		Vidas.sumar_vida()
		queue_free()
		pass 
