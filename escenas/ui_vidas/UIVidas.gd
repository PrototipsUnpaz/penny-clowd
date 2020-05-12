extends Control

#onready var vidas = $HBoxContainer

func _ready():
	$HBoxContainer/TextoVida.text = "X " + String(Vidas.vidasNivel)
	pass

#func borrarUltimaVida():
#	var contarVidas = vidas.get_child_count()
#	$HBoxContainer.get_child(contarVidas - 1).queue_free()
#	pass
#función lista por si el cliente cambia 
#de opinión sobre la UI. a terminar/consultar


