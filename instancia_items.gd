extends Position2D

var itemsmite = preload ("res://escenas/items/sonrisa/ItemSmile.tscn")
var itemlike = preload("res://escenas/items/like/ItemLike.tscn")
var itemlove = preload("res://escenas/items/corazon/ItemLove.tscn")

export (String, "love", "smite" ,"like") var obstaculo = "smite"



func _on_VisibilityNotifier2D_screen_entered():
	if obstaculo == "smite":
		var instanciasmite = itemsmite.instance()
		add_child(instanciasmite)
		
	if obstaculo == "like":
		var instacialike = itemlike.instance()
		add_child(instacialike)
	
	if obstaculo == "love":
		var instacialove = itemlove.instance()
		add_child(instacialove)
	pass 


