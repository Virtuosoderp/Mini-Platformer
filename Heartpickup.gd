extends Node2D
export var heartnum = 0

func _physics_process(_delta):
	if Global.hearts > heartnum:
		queue_free()

func _on_heart_body_entered(_body):
	var bodies = $heart.get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player":
			if Global.hearts == heartnum:
				Global.hearts += 1
				queue_free()
			if Global.hearts < heartnum:
				Global.hearts += 1
				heartnum = 0
				queue_free()
