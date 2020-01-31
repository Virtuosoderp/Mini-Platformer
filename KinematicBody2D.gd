extends KinematicBody2D
const UP = Vector2(0,-1)
const gravity = 20
const acceleration = 50
const max_speed = 200
const jump_height = -600
var motion = Vector2()	
var speed
var health = 3
var invincible = false
const respawn = preload("retry.tscn")
var time = 0

func _physics_process(_delta):
	$text/Actual_Score.set_text(str(Global.score))
	$text/Actual_Health.set_text(str(health))
	$text/Actual_Hearts.set_text(str(Global.hearts))
	motion.y += gravity
	var friction = false
	if Input.is_action_pressed("ui_right"):	
		motion.x = min(motion.x+acceleration, max_speed)
		$Sprite.flip_h = false
		$Sprite.play("Run")
	elif Input.is_action_pressed("ui_left"):
		$Sprite.flip_h = true
		motion.x = max(motion.x-acceleration, -max_speed)
		$Sprite.play("Run")
	else:
		$Sprite.play("Idle")
		friction = true
	if is_on_floor():
		if Input.is_action_just_pressed("ui_up"):
			motion.y = jump_height
			$jump.play()
		if friction == true:
			motion.x = lerp(motion.x, 0, 0.2)
	else:
		if motion.y < 0:
			$Sprite.play("Jump")
		else:
			$Sprite.play("Fall")
		if friction == true:
			motion.x = lerp(motion.x, 0, 0.05)
	motion = move_and_slide(motion, UP)
	
func damage(enemypos, d):
	var ex = enemypos.x
	#var ey = enemypos.y
	if invincible != true:
		health -= d
		invincible = true
		$hit.play()
		$Sprite.modulate = Color(1, 1, 1, 0.5)
		$inframes.start()
		if ex < position.x:
			motion.x += 750
		if is_on_floor():
			motion.y -= 150
		if ex > position.x:
			motion.x -= 750
		if is_on_floor():
			motion.y -= 150
	if health < 0:
		var _stop = Vector2(0,0)
		Global.score = 0
		Global.died = 1
		invincible = true
		$Sprite.visible = false
		motion.x *= 0
		motion.y *= 0
		var scene_name = get_tree().get_current_scene().get_name()
		var _ret = get_tree().change_scene("res://" + str(scene_name) + ".tscn")
		
func score(s):
	$coin_pickup.play()
	Global.score += s

func _on_inframes_timeout():
	invincible = false
	$Sprite.modulate = Color(1, 1, 1, 1)


func _on_thetime_timeout():
	time += 1
	$text/Actual_Time.set_text(str(time))
	$thetime.start()
	
