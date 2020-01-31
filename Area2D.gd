extends Area2D
var direction
export var speed = .5
var start
var finish
export var maxdistance = 0

func _ready():
	start = position.x
	finish = start + maxdistance
	direction = 0
	
func _process(delta):
	if position.x == finish:
		direction = 1
		$AnimatedSprite.flip_h = true
	if position.x == start:
		direction = 0
		$AnimatedSprite.flip_h = false
	if direction == 0:
		position.x += speed
	if direction == 1:
		position.x -= speed
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player":
			body.damage(position, 1)
