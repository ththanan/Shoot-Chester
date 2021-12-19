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
	
	
func die():
	$HitSound.playmusic()
	heart -= 1
	if heart == 2:
		$HeartAnimatedtSprite1.frame = 1
	if heart == 1:
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
