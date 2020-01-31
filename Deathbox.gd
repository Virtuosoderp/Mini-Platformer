extends Area2D

func _ready():
	$Sprite.modulate = Color(1, 1, 1, 0)

func _process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player":
			body.damage(position, 5)
