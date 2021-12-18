extends Node

var bg_music = load("res://Audio/Hit.wav")

func playmusic():
	$Music.stream = bg_music
	$Music.play()
