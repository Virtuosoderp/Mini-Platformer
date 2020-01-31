extends Camera2D
const respawn = preload("retry.tscn")

func retry():
	var respawns = respawn.instance()
	get_parent().add_child(respawns)
	respawn.position.x = position.x
	respawn.position.y = position.y
