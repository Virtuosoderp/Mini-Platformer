extends Control

func _on_VideoPlayer_finished():
	var _ret = get_tree().change_scene("res://Level_1.tscn")
func _process(_delta):
	if Input.is_key_pressed(KEY_SPACE):
		var _ret = get_tree().change_scene("res://Level_1.tscn")
