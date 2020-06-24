extends Node

var quitarItemLove = false
var quitarItemLike = false
var quitarItemSmile = false
var itemLove = false
var itemLike = false
var itemSmile = false

var posPenny2 = false
var nivelUno = false
var nivelDos = false
var nivelTres = false
var nivelCuatro = false

var vidasNivel = 3
var vidaExtra = false
var items = 0


#func juego_terminado():
#		get_tree().change_scene("res://escenas/fin_del_juego/FinDelJuego.tscn")
#		pass

func sumar_vida():
	if items == 3 :
		vidasNivel +=1
		vidaExtra = true
		pass

func quitar_vida():
	vidasNivel -=1
	pass
	
func suma_items():
	items +=1
	pass

