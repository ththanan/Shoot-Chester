extends Node

var bg_music = load("res://Audio/2 - The Cave.ogg")
var bg_music2 = load("res://Audio/3 - Revelation.ogg")
var win_music = load("res://Audio/endwin.wav")

func playmusic():
	$Music.stream = bg_music
	$Music.play()

func playmusic2():
	$Music.stream = bg_music2
	$Music.play()

func playwin():
	$Music.stream = win_music
	$Music.play()

func _on_Music_finished():
	if $Music.stream == bg_music:
		playmusic()
	elif $Music.stream == win_music:
		playmusic2()
