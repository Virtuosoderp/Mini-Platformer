extends Control

func _ready():
	$CenterContainer/VBoxContainer/Label3.set_text(str(Global.finalscore))

func _on_Button_pressed():
	Global.score = 0
	Global.died = 0
	Global.finalscore = 0
	get_tree().change_scene("res://StartMenu.tscn")

