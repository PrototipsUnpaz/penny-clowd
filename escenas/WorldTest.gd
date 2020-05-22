extends Node2D

func _ready():
	quitar_item_love()
	quitar_item_like()
	quitar_item_sonrisa()
	pass
	
func _process(delta):
	$UI/UIVidas/TextoVida.text = "X " + String(Vidas.vidasNivel)
	pass

func quitar_item_love():
	if Vidas.quitarItemLove == true :
		$ItemLove.queue_free()
		pass
		
func quitar_item_sonrisa():
	if Vidas.quitarItemSmile == true :
		$ItemSmile.queue_free()
		pass
		
func quitar_item_like():
	if Vidas.quitarItemLike == true :
		$ItemLike.queue_free()
		pass
		


