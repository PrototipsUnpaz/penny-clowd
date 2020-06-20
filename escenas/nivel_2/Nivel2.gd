extends Node2D


func _ready():
	$Timer.start()
	$Soundtrack.play()
	Vidas.nivelDos = true
	Vidas.posPenny2 = true
	pass
	
func _process(delta):
	$Ui/UIVidas/TextoVida. text="x "+String(Vidas.vidasNivel)
	pass


func _on_Salir_button_down():
	$SonidoBoton.play()
	get_tree().quit()
	pass 


func _on_Timer_timeout():
	$gatcies/Salir.visible = true
	$gatcies/Label.visible = true
	pass 
