extends Node

var have_red = false
var have_yellow = false
var have_green = false
var have_blue = false


func _process(delta):
	if have_red and have_yellow and have_green and have_blue:
		$Door1to2.open_dai()
	if is_instance_valid($YellowBottle):
		if $YellowBottle.visible:
			$ChestFullRight.die()
	if is_instance_valid($RedBottle):
		if $RedBottle.visible:
			$ChestFullRight2.die()
	if is_instance_valid($GreenBottle):
		if $GreenBottle.visible:
			$ChestFullLeft1.die()
	if is_instance_valid($BlueBottle):
		if $BlueBottle.visible:
			$ChestFullLeft2.die()

func _on_RedBottle_tree_exited(): have_red = true
func _on_YellowBottle_tree_exited(): have_yellow = true
func _on_GreenBottle_tree_exited(): have_green = true
func _on_BlueBottle_tree_exited(): have_blue = true

func _on_GreenMan1_tree_exited():$HitSound.playmusic()
func _on_GreenMan2_tree_exited():$HitSound.playmusic()
func _on_GreenMan3_tree_exited():$HitSound.playmusic()
func _on_RedMan1_tree_exited():$HitSound.playmusic()
func _on_RedMan2_tree_exited():$HitSound.playmusic()
func _on_RedMan3_tree_exited():$HitSound.playmusic()
func _on_BrownMan1_tree_exited():$HitSound.playmusic()
func _on_BrownMan2_tree_exited():$HitSound.playmusic()
func _on_BrownMan3_tree_exited():$HitSound.playmusic()
func _on_BlueMan1_tree_exited():$HitSound.playmusic()
func _on_BlueMan2_tree_exited():$HitSound.playmusic()
func _on_BlueMan3_tree_exited():$HitSound.playmusic()
func _on_TreeMan1_tree_exited():$HitSound.playmusic()
func _on_TreeMan2_tree_exited():$HitSound.playmusic()
func _on_TreeMan3_tree_exited():$HitSound.playmusic()

