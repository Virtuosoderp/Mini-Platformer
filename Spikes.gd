extends Area2D

func _process(_delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player":
			body.damage(position, 5)
