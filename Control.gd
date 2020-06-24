extends Control

func _on_BotonPausa_button_down():
	get_tree().paused = true
	$Sprite.visible = true
	$Label.visible = true
	$BotonPausa.visible = false
	$BotonVolver.visible = true
	$SonidoBoton.play()
	pass 

func _on_BotonVolver_button_down():
	if get_tree().paused == true :
		get_tree().paused = false
	$Sprite.visible = false
	$Label.visible = false
	$BotonPausa.visible = true
	$BotonVolver.visible = false
	$SonidoBoton.play()
	pass 
