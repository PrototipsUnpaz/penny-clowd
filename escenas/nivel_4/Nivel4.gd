extends Node2D

func _ready():
	$Soundtrack.play()
	quitar_item_love()
	quitar_item_like()
	quitar_item_sonrisa()
	Vidas.nivelTres = false
	Vidas.nivelCuatro = true
	Vidas.posPenny2 = true
	pass
	
func _process(_delta):
	$Ui/UIVidas/TextoVida. text="x "+String(Vidas.vidasNivel)
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


func _on_FinalAnimacion_area_entered(area):
	$Ui/Pausa.visible = false
	$Player/SonidoSalto.volume_db = -50
	pass 


func _on_MUSICOFF_area_entered(area):
	$Soundtrack.stop()
	pass 
