extends KinematicBody2D

func die():
	$HitSound.playmusic()
	$AnimatedSprite.play()
