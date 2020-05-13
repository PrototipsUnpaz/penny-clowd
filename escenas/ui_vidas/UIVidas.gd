extends Control


func _ready():
	$TextoVida.text = "x " + String(Vidas.vidasNivel)
	pass
	
func _process(delta):
	vida_extra()
	#$TextoVida.text = "x " + String(Vidas.vidasNivel)
	$TextoItem.text = "x " + String(Vidas.items)
	pass

func vida_extra():
	if Vidas.items == 3 :
		$TextoVida.text = "x " + String(Vidas.vidasNivel)
		pass
#func borrarUltimaVida():
#	var contarVidas = vidas.get_child_count()
#	$HBoxContainer.get_child(contarVidas - 1).queue_free()
#	pass
#función lista por si el cliente cambia 
#de opinión sobre la UI. a terminar/consultar


