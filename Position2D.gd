extends Position2D


var conoEnemigo = preload("res://escenas/enemigos/cono_enemigo/ConoEnemigo.tscn")

var paredEnemigo = preload("res://escenas/enemigos/pared_enemigo/ParedEnemigo.tscn")

var circuloEnemigo =  preload("res://escenas/enemigos/circulo_fuego/CirculoFuego.tscn")

export (String, "cono", "pared" ,"circulo") var obstaculo = "cono"



func _on_VisibilityNotifier2D_screen_entered():
	if obstaculo == "cono":
		var instanciaCono = conoEnemigo.instance()
		add_child(instanciaCono)
		
	if obstaculo == "pared":
		var instaciapared = paredEnemigo.instance()
		add_child(instaciapared)
	
	if obstaculo == "circulo":
		var instaciacirculo = circuloEnemigo.instance()
		add_child(instaciacirculo)
	pass 

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	pass 
