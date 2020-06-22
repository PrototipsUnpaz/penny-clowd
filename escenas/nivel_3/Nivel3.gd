extends Node2D

func _ready():
	quitar_item_love()
	quitar_item_like()
	quitar_item_sonrisa()
#	Vidas.nivelDos = false
#	Vidas.nivelTres = true
	Vidas.posPenny2 = false
	pass
	
func _process(_delta):
	$UI/UIVidas/TextoVida.text = "X " + String(Vidas.vidasNivel)
	pass

func quitar_item_love():
	if Vidas.quitarItemLove == true :
		$instancia_items3.queue_free()
		pass
		
func quitar_item_sonrisa():
	if Vidas.quitarItemSmile == true :
		$instancia_items.queue_free()
		pass
		
func quitar_item_like():
	if Vidas.quitarItemLike == true :
		$instancia_items2.queue_free()
		pass

func _on_FinalAnimacion_area_entered(_area):
	$Sountrack.volume_db = -25
	#$Sountrack.stop()
	pass 
