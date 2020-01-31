extends Control

func _on_VideoPlayer_finished():
	get_tree().change_scene("res://Level_1.tscn")
func _process(delta):
	if Input.is_key_pressed(KEY_SPACE):
		get_tree().change_scene("res://Level_1.tscn")
