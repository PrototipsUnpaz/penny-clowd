extends Control


func _ready():
	$LoveContainer/Love.modulate = Color(1,1,1,0.5)
	$LikeContainer/Like.modulate = Color(1,1,1,0.5)
	$SonrisaContainer/Sonrisa.modulate = Color(1,1,1,0.5)
	pass
	
func _process(_delta):
	cambiar_aspecto_item_love()
	cambiar_aspecto_item_like()
	cambiar_aspecto_item_smile()
	pass
		
		
func cambiar_aspecto_item_love():
	if Vidas.itemLove == true:
		$LoveContainer/Love.modulate = Color(1,1,1,1)
		pass
		
func cambiar_aspecto_item_like():
	if Vidas.itemLike == true :
		$LikeContainer/Like.modulate = Color(1,1,1,1)
		pass
		
func cambiar_aspecto_item_smile():
	if Vidas.itemSmile == true :
		$SonrisaContainer/Sonrisa.modulate = Color(1,1,1,1)
		pass


