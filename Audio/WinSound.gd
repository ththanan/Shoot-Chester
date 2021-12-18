extends Node

var bg_music = load("res://Audio/endwin.wav")


func playmusic():
	$Music.stream = bg_music
	$Music.play()


func _on_Music_finished():
	$EndingSound.playmusic()
