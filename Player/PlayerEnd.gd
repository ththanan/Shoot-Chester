extends KinematicBody2D


const speed = 100
var facing_right = 1
var heart = 6
var bullet = 9

func _physics_process(delta):
	var velocity = Vector2.ZERO

	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
	move_and_slide(velocity.normalized() * speed)
	player_animation(velocity)
	

func player_animation(velocity):
	$BulletNumber.frame = bullet

	if velocity.y != 0:
		$AnimatedSprite.play('Run')
	elif velocity.x != 0:
		$AnimatedSprite.play('Run')
		$AnimatedSprite.flip_h = velocity.x < 0
	else:
		$AnimatedSprite.play('Idle')
