extends KinematicBody2D

var player = null
var move = Vector2.ZERO
var speed = 2
var heart = 3
var direction = 1
var number = -1
var x = 0


func _ready():
	$AnimatedSprite.play('Idle')
	
func _physics_process(delta):

	move = Vector2.ZERO
	move.x += number
	if move.x >= 0:
		x += 1
		$AnimatedSprite.play('Run')
		$AnimatedSprite.flip_h = false
	elif move.x <= 0:
		x -= 1
		$AnimatedSprite.play('Run')
		$AnimatedSprite.flip_h = true
	if x == 50:
		number = -1
	elif x == -50:
		number = 1
	move = move_and_collide(move * direction)

	
func die():
	$HitSound.playmusic()
	heart -= 1
	if heart == 2:
		print(heart)
		$HeartAnimatedtSprite1.frame = 1
	if heart == 1:
		print(heart)
		$HeartAnimatedtSprite2.frame = 1
	if heart <= 0 :
		queue_free()

	
func _on_PlayerDetector_body_entered(body):
	if body.name == 'Player':
		player = body

func _on_PlayerDetector_body_exited(body):
	if body.name == 'Player':
		player = null


func _on_PlayerHit_body_entered(body):
	if body.name == 'Player':
		body.get_hit()
