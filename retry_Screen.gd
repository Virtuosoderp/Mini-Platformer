extends Control

func _process(_delta):
	if Input.is_key_pressed(KEY_SPACE):
		var scene_name = get_tree().get_current_scene().get_name()
		var _ret = get_tree().change_scene("res://" + str(scene_name) + ".tscn")
		
func _on_Button_pressed():
	var scene_name = get_tree().get_current_scene().get_name()
	var _ret = get_tree().change_scene("res://" + str(scene_name) + ".tscn")
