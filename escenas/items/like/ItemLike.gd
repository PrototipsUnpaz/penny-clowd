extends Node2D

func _on_Item_area_entered(area):
	Vidas.itemLike = true
	Vidas.quitarItemLike = true
	Vidas.suma_items()
	Vidas.sumar_vida()
	queue_free()
	pass 
