extends Control

func _on_StartButton_pressed():
	if Global.died == 1:
		get_tree().change_scene("res://Level_1.tscn")
	else:
		get_tree().change_scene("res://tutorial.tscn")
	

func _process(delta):
	if Input.is_key_pressed(KEY_1):
		get_tree().change_scene("res://Level_1.tscn")
	if Input.is_key_pressed(KEY_2):
		get_tree().change_scene("res://Level_2.tscn")
	if Input.is_key_pressed(KEY_3):
		get_tree().change_scene("res://Level_3.tscn")
	if Input.is_key_pressed(KEY_4):
		get_tree().change_scene("res://Level_4.tscn")
	if Input.is_key_pressed(KEY_5):
		get_tree().change_scene("res://Level_5.tscn")
	if Input.is_key_pressed(KEY_6):
		get_tree().change_scene("res://Level_6.tscn")
	if Input.is_key_pressed(KEY_7):
		get_tree().change_scene("res://Level_7.tscn")
	if Input.is_key_pressed(KEY_8):
		get_tree().change_scene("res://Level_8.tscn")
		Global.hearts = 8
	if Input.is_key_pressed(KEY_9):
		get_tree().change_scene("res://Level_8.tscn")
func _on_Quit_pressed():
	get_tree().quit()
	pass # Replace with function body.
