extends StaticBody2D

var fireball =preload("fireball.tscn")

func fire():
	var fireball = fireball.instance()
	get_parent().add_child
