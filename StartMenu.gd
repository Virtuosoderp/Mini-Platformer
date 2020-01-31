extends Control

func _on_StartButton_pressed():
	if Global.died == 1:
		var _ret = get_tree().change_scene("res://Level_1.tscn")
	else:
		var _ret = get_tree().change_scene("res://tutorial.tscn")
	
func _on_StartMenu_tree_entered():
	# wtf?
	pass

func _process(_delta):
	if Input.is_key_pressed(KEY_1):
		var _ret = get_tree().change_scene("res://Level_1.tscn")
	if Input.is_key_pressed(KEY_2):
		var _ret = get_tree().change_scene("res://Level_2.tscn")
	if Input.is_key_pressed(KEY_3):
		var _ret = get_tree().change_scene("res://Level_3.tscn")
	if Input.is_key_pressed(KEY_4):
		var _ret = get_tree().change_scene("res://Level_4.tscn")
	if Input.is_key_pressed(KEY_5):
		var _ret = get_tree().change_scene("res://Level_5.tscn")
	if Input.is_key_pressed(KEY_6):
		var _ret = get_tree().change_scene("res://Level_6.tscn")
	if Input.is_key_pressed(KEY_7):
		var _ret = get_tree().change_scene("res://Level_7.tscn")
	if Input.is_key_pressed(KEY_8):
		var _ret = get_tree().change_scene("res://Level_8.tscn")
		Global.hearts = 8
	if Input.is_key_pressed(KEY_9):
		var _ret = get_tree().change_scene("res://Level_8.tscn")
func _on_Quit_pressed():
	get_tree().quit()
	pass # Replace with function body.
