extends KinematicBody2D
var can_open = false

func _on_Area2D_body_entered(body):
	if can_open:
		if body.name == 'Bullet' and is_instance_valid($DoorsLeafClosed):
			yield(get_tree().create_timer(0.1), "timeout")
			$DoorsLeafClosed.visible = false
		elif body.name == 'Bullet' and $DoorsLeafClosed.visible == false:
			yield(get_tree().create_timer(0.1), "timeout")
	elif not can_open:
		if body.name == 'Bullet' and is_instance_valid($DoorsLeafClosed):
			yield(get_tree().create_timer(0.1), "timeout")

func _on_PlayerDetector_body_entered(body):
	if body.name == 'Player' and $DoorsLeafClosed.visible == false:
		yield(get_tree().create_timer(0.5), "timeout")
		get_tree().change_scene("res://Level/Level3.tscn")

func can_open():
	can_open = true
