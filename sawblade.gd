extends Area2D
var direction
export var speed = .5
var start
var finish
export var maxdistance = -150

func _ready():
	start = position.y
	finish = start + maxdistance
	direction = 0

func _process(_delta):
	$Blade.rotation_degrees += 10
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player":
			body.damage(position, 1)
	if position.y == finish:
		direction = 1
	if position.y == start:
		direction = 0
	if direction == 0:
		position.y -= speed
	if direction == 1:
		position.y += speed
