extends Node2D
export var speed = 5
const FIREBALL_SCENE = preload("realfireball.tscn")

func _ready():
	fire()
	$shooter/Timer.wait_time = speed

func fire():
	var fireball = FIREBALL_SCENE.instance()
	get_parent().call_deferred("add_child", fireball)
	fireball.position.y = position.y
	fireball.position.x = position.x
	fireball.rotation = rotation
	
func _on_Timer_timeout():
	fire()
	$shooter/Timer.start()
