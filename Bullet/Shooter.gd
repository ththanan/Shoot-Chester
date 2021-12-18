extends Sprite


var BULLET = preload("res://Bullet/Bullet.tscn")
var BULLET_SPEED = 400
export var SHOOT_TIME = 0.4
var CAN_SHOOT = true

func _physics_process(delta):
	look_at(get_global_mouse_position())
	if Input.is_action_pressed("shoot") and CAN_SHOOT:
		var bullet_instance = BULLET.instance()
		bullet_instance.position = get_global_position()
		bullet_instance.apply_impulse(Vector2(), Vector2(BULLET_SPEED, 0).rotated(rotation))
		get_tree().get_root().call_deferred("add_child",bullet_instance)
		$ShootSound.playmusic()
		CAN_SHOOT = false
		yield(get_tree().create_timer(SHOOT_TIME), "timeout")
		CAN_SHOOT = true

func _on_Area2D_body_entered(body):
	queue_free()
