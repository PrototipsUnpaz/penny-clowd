extends Position2D

var diaboloGrande = preload ("res://escenas/enemigos/diabolo_g/DiaboloG.tscn")
var diaboloMediano = preload("res://escenas/enemigos/diabolo_m/DiaboloM.tscn")

export (String, "DiaboloG", "DiaboloM") var enemigo = "DiaboloG"

func _on_VisibilityNotifier2D_screen_entered():
	if enemigo == "DiaboloG":
		var instanciaDG = diaboloGrande.instance()
		add_child(instanciaDG)
		
	if enemigo == "DiaboloM":
		var instanciaDM = diaboloMediano.instance()
		add_child(instanciaDM)
	pass 

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	pass 
