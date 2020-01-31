extends Path2D

onready var follow = get_node("follow")

func _ready():
	set_process(true)
	
func _process(delta):
	print($follow.offset)
	follow.set_offset(follow.get_offset() + 50 * delta)
	if $follow.offset == 130.45:
		$follow/Area2D/Sprite.flip_h = false
	if $follow.position.x == 250.04:
		$follow/Area2D/Sprite.flip_h = true
