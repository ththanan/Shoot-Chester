extends KinematicBody2D
		
func _on_PlayerDetector_body_entered(body):
	if body.name == 'Player' and self.visible == true:
		body.collide_blue()
		queue_free()

func show_up():
	self.visible = true
	$AnimatedSprite.play('Idle')
