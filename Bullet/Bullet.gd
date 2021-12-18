extends RigidBody2D


func _on_Area2D_body_entered(body):
	if body.name == 'Door1to2':
		yield(get_tree().create_timer(0.5), "timeout")
		queue_free()
	elif body.name == 'Door2to3':
		yield(get_tree().create_timer(0.5), "timeout")
		queue_free()
	elif body.name == 'Door3to4':
		yield(get_tree().create_timer(0.5), "timeout")
		queue_free()
	elif body.name == 'Door4to5':
		yield(get_tree().create_timer(0.5), "timeout")
		queue_free()
	elif body.name == 'Door5to6':
		yield(get_tree().create_timer(0.5), "timeout")
		queue_free()
	elif body.name == 'Door6toEnd':
		yield(get_tree().create_timer(0.5), "timeout")
		queue_free()
	elif body.name == 'DoorTtoH':
		yield(get_tree().create_timer(0.5), "timeout")
		queue_free()
	elif body.name == "WallTileMap":
		yield(get_tree().create_timer(0.5), "timeout")
		queue_free()
	elif body.name == "ChestFull":
		yield(get_tree().create_timer(0.5), "timeout")
		queue_free()
	elif body.name == "ChestEmpty":
		body.die()
		yield(get_tree().create_timer(0.5), "timeout")
		queue_free()
	elif body.name == "YellowBottle":
		body.show_up()
		yield(get_tree().create_timer(0.5), "timeout")
		queue_free()
	elif body.name == "RedBottle":
		body.show_up()
		yield(get_tree().create_timer(0.5), "timeout")
		queue_free()
	elif body.name == "GreenBottle":
		body.show_up()
		yield(get_tree().create_timer(0.5), "timeout")
		queue_free()
	elif body.name == "BlueBottle":
		body.show_up()
		yield(get_tree().create_timer(0.5), "timeout")
		queue_free()
	elif body.name != "Bullet" or body.name != "YellowBottle" or body.name != "ChestFull"  or body.name != "Shooter" or body.name != "WallTileMap" or body.name != "Player":
		body.die()
		queue_free()


func die():
	call_deferred("free")
