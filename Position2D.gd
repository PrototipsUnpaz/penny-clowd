extends Position2D


var conoenemigo = preload("res://escenas/enemigos/cono_enemigo/ConoEnemigo.tscn")

var paredenemigo = preload("res://escenas/enemigos/pared_enemigo/ParedEnemigo.tscn")

var circuloenemigo =  preload("res://escenas/enemigos/circulo_fuego/CirculoFuego.tscn")

export (String, "cono", "pared" ,"circulo") var obstaculo = "cono"



func _on_VisibilityNotifier2D_screen_entered():
	if obstaculo == "cono":
		var instanciaCono = conoenemigo.instance()
		add_child(instanciaCono)
		
	if obstaculo == "pared":
		var instaciapared = paredenemigo.instance()
		add_child(instaciapared)
	
	if obstaculo == "circulo":
		var instaciacirculo = circuloenemigo.instance()
		add_child(instaciacirculo)
	pass 


