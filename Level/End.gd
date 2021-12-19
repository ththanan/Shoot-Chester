extends Node

func _ready():
	MusicPlayer.playwin()
	$WinSound.playmusic()
	$Fireplace/AnimatedSprite.play('Idle')
	$YSort/Wizzard/AnimatedSprite.play('Idle')
	$YSort/Princess/AnimatedSprite.play('Idle')
	$YSort/Prince/AnimatedSprite.play('Idle')
	$YSort/Lizard/AnimatedSprite.play('Idle')

func _on_TextureButton_pressed():
	get_tree().change_scene("res://Level/Home.tscn")


func _on_TextureButton_button_down():
	$ButtonSound.playmusic()
