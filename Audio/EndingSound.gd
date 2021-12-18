extends Node

var bg_music = load("res://Audio/3 - Revelation.ogg")

func playmusic():
	$Music.stream = bg_music
	$Music.play()

func _on_Music_finished():
	playmusic()
