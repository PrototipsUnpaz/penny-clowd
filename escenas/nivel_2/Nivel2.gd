extends Node2D

func _ready():
	$Soundtrack.play()
	Vidas.nivelDos = true
	Vidas.posPenny2 = true
	pass
	
func _process(delta):
	$Ui/UIVidas/TextoVida. text="x "+String(Vidas.vidasNivel)
	pass
