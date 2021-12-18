extends Node

var bg_music = load("res://Audio/Gold2.wav")

func playmusic():
	$Music.stream = bg_music
	$Music.play()
