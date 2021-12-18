extends KinematicBody2D

var sound = 0

func die():
	if sound == 0:
		$HitSound.playmusic()
	elif sound >= 2:
		sound = 1
	$AnimatedSprite.play()
	sound += 1
