extends Area2D
var motion = Vector2()

func _process(delta):
	position.x -= 3
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player":
			if body.invincible == false:
				body.damage(position, 1)
				free()
		elif body.name != "shooter":
			queue_free()

func _on_Timer_timeout():
	queue_free()
