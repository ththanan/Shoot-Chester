extends Node

var bg_music = load("res://Audio/sfx_menu_move4.wav")

func playmusic():
	$Music.stream = bg_music
	$Music.play()
