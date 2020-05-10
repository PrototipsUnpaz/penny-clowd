extends Position2D

## ACA ESTABAS CARGANDO EL SCRIPT DEL CONO, NO LA ESCENA
var conoenemigo = preload("res://escenas/enemigos/cono_enemigo/ConoEnemigo.tscn")
## ACA VAS A TENER QUE AGREGAR LOS RECURSOS DE LOS DEMAS OBSTÁCULOS.

var visual = false
export (String, "cono", "pared" ,"circulo") var obstaculo = "cono" 
## Es necesario poner el = "cono" al declarar obstaculo, si queres
## que ese sea el valor por defecto ya que de lo contrario, aunque aparezca
## En el editor, no tendrá ningún valor seleccionado.
## La otra opción es seleccionarlo efectivamente en el editor
## Para garantizar que el valor está setteado.


func _on_VisibilityNotifier2D_screen_entered():
	# ACA VAS A TENER QUE AGREGAR CONDICIONALES PARA SABER QUE TIPO DE OBSTACULO INSTANCIAR
	# SEGÚN LA VARIABLE OBSTACULO SI ES CONO INSTANCIAS CONO, SI PARED... ETC..
	if obstaculo == "cono":
		var instanciaCono = conoenemigo.instance()
		add_child(instanciaCono) # LO AGREGA COMO HIJO DEL POSITION (DIRECTO AL ROOT), NO DEL VISIBILITY
	pass 


## LUEGO DE QUE ESTO FUNCIONE TENES QUE CONECTAR LA SEÑAL DE SCREEN_EXITED PARA HACER UN QUEUE_FREE()
