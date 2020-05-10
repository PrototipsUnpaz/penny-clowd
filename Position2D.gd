extends Position2D


var conoenemigo = preload ("res://escenas/enemigos/cono_enemigo/ConoEnemigo.gd")
var visual = false
export (String, "cono", "pared" ,"circulo") var obstaculo


func _on_VisibilityNotifier2D_screen_entered():
	print("visualizado position2d")
	
	pass 


