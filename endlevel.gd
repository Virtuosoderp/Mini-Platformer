extends Area2D
export(String, FILE, "*.tscn") var world_scene

func _process(_delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player":
			Global.score += Global.finalscore
			var _ret = get_tree().change_scene(world_scene)
