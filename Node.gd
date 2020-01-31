extends Node

func _ready():
	if Global.hearts == 8:
		get_tree().change_scene("res://goodending.tscn")
	else:
		get_tree().change_scene("res://badending.tscn")
	
