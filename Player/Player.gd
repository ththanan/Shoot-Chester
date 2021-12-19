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

func get_hit():
	$HitSound.playmusic()
	heart -= 1
	if heart == 5:
		print(heart)
		$HeartAnimatedtSprite1.frame = 1
	if heart == 4:
		print(heart)
		$HeartAnimatedtSprite1.frame = 2
	if heart == 3:
		print(heart)
		$HeartAnimatedtSprite2.frame = 1
	if heart == 2:
		print(heart)
		$HeartAnimatedtSprite2.frame = 2
	if heart == 1:
		print(heart)
		$HeartAnimatedtSprite3.frame = 1
	if heart <= 0 :
		get_tree().reload_current_scene()

func bullet_math():
	bullet -= 1
	$BulletNumber.frame = bullet

func collide_red():
	$CollectPotionSound.playmusic()
	print('collect red bottle')
	yield(get_tree().create_timer(0.3), "timeout")
	$BlankBottle1.queue_free()

func collide_yellow():
	$CollectPotionSound.playmusic()
	print('collect yellow bottle')
	yield(get_tree().create_timer(0.3), "timeout")
	$BlankBottle2.queue_free()

func collide_green():
	$CollectPotionSound.playmusic()
	print('collect green bottle')
	yield(get_tree().create_timer(0.3), "timeout")
	$BlankBottle3.queue_free()

func collide_blue():
	$CollectPotionSound.playmusic()
	print('collect blue bottle')
	yield(get_tree().create_timer(0.3), "timeout")
	$BlankBottle4.queue_free()

