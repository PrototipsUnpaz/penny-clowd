extends Node

const cantidadMaximaVidas = 3
var vidasNivel = cantidadMaximaVidas
var items = 0

func sumar_vida():
	if items == 3:
		vidasNivel +=1
		pass

func quitar_vida():
	vidasNivel -=1
	pass
