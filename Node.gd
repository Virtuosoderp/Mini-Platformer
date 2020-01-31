extends Node

func _ready():
	if Global.hearts == 8:
		var _ret = get_tree().change_scene("res://goodending.tscn")
	else:
		var _ret = get_tree().change_scene("res://badending.tscn")
	
