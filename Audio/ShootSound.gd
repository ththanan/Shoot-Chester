extends Node

var bg_music = load("res://Audio/sfx_wpn_dagger.wav")


func playmusic():
	$Music.stream = bg_music
	$Music.play()
