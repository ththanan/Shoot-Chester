extends Node

func _ready():
	$PlayerStart.play('Idle')
	MusicPlayer.playmusic()

func _on_Start_pressed():
	get_tree().change_scene("res://Level/Level1.tscn")

func _on_TuTorial_pressed():
	get_tree().change_scene("res://Level/Tutorial.tscn")

func _on_Start_button_down():$ButtonSound.playmusic()
func _on_TuTorial_button_down():$ButtonSound.playmusic()


func _on_Button_pressed():
	get_tree().change_scene("res://Level/Level1.tscn")
