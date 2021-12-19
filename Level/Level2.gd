extends Node

var have_red = false
var have_yellow = false
var have_green = false
var have_blue = false

func _process(delta):
	if have_red and have_yellow and have_green and have_blue:
		$Door2to3.can_open()
	if is_instance_valid($YellowBottle):
		if $YellowBottle.visible:
			$ChestFull2.die()
	if is_instance_valid($RedBottle):
		if $RedBottle.visible:
			$ChestFull3.die()
	if is_instance_valid($GreenBottle):
		if $GreenBottle.visible:
			$ChestFull1.die()
	if is_instance_valid($BlueBottle):
		if $BlueBottle.visible:
			$ChestFull4.die()

func _on_RedBottle_tree_exited(): have_red = true
func _on_YellowBottle_tree_exited(): have_yellow = true
func _on_GreenBottle_tree_exited(): have_green = true
func _on_BlueBottle_tree_exited(): have_blue = true

func _on_BlueMan_tree_exited():$HitSound.playmusic()
func _on_BlueMan2_tree_exited():$HitSound.playmusic()
func _on_BrownMan_tree_exited():$HitSound.playmusic()
func _on_BrownMan2_tree_exited():$HitSound.playmusic()
func _on_TreeMan_tree_exited():$HitSound.playmusic()
func _on_TreeMan2_tree_exited():$HitSound.playmusic()
func _on_SlimeMan_tree_exited():$HitSound.playmusic()
func _on_SlimeMan2_tree_exited():$HitSound.playmusic()
func _on_WhiteMan_tree_exited():$HitSound.playmusic()
func _on_WhiteMan2_tree_exited():$HitSound.playmusic()
