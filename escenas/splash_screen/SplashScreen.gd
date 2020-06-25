extends Node2D

func _ready():
	$AnimatedSprite.play("icongodot")
	$Timer.start()
	pass

func ir_al_menu_principal():
	get_tree().change_scene("res://escenas/menu_principal/MenuPrincipal.tscn")
	pass

func _on_Timer_timeout():
	$AnimatedSprite.play("prototips")
	$Timer2.start()
	pass

func _on_Timer2_timeout():
	ir_al_menu_principal()
	pass 
