extends Node

var have_red = false
var have_yellow = false
var have_green = false
var have_blue = false

func _process(delta):
	if have_red and have_yellow and have_green and have_blue:
		$Door5to6.open_dai()
	if is_instance_valid($YellowBottle):
		if $YellowBottle.visible:
			$ChestFull4.die()
	if is_instance_valid($RedBottle):
		if $RedBottle.visible:
			$ChestFull3.die()
	if is_instance_valid($GreenBottle):
		if $GreenBottle.visible:
			$ChestFull2.die()
	if is_instance_valid($BlueBottle):
		if $BlueBottle.visible:
			$ChestFull1.die()


func _on_RedBottle_tree_exited(): have_red = true
func _on_YellowBottle_tree_exited(): have_yellow = true
func _on_GreenBottle_tree_exited(): have_green = true
func _on_BlueBottle_tree_exited(): have_blue = true

func _on_BlueMan_tree_exited():$HitSound.playmusic()
func _on_BlueMan2_tree_exited():$HitSound.playmusic()
func _on_BlueMan3_tree_exited():$HitSound.playmusic()
func _on_BlueMan4_tree_exited():$HitSound.playmusic()
func _on_BlueMan5_tree_exited():$HitSound.playmusic()
func _on_BlueMan6_tree_exited():$HitSound.playmusic()
func _on_BlueMan7_tree_exited():$HitSound.playmusic()
func _on_BlueMan8_tree_exited():$HitSound.playmusic()
func _on_BrownMan_tree_exited():$HitSound.playmusic()
func _on_BrownMan2_tree_exited():$HitSound.playmusic()
func _on_BrownMan3_tree_exited():$HitSound.playmusic()
func _on_BrownMan4_tree_exited():$HitSound.playmusic()
func _on_BrownMan5_tree_exited():$HitSound.playmusic()
func _on_BrownMan6_tree_exited():$HitSound.playmusic()
func _on_BrownMan7_tree_exited():$HitSound.playmusic()
func _on_BrownMan8_tree_exited():$HitSound.playmusic()
func _on_BrownMan9_tree_exited():$HitSound.playmusic()
func _on_TreeMan_tree_exited():$HitSound.playmusic()
func _on_TreeMan4_tree_exited():$HitSound.playmusic()
func _on_TreeMan5_tree_exited():$HitSound.playmusic()
func _on_TreeMan6_tree_exited():$HitSound.playmusic()
func _on_TreeMan7_tree_exited():$HitSound.playmusic()
func _on_SlimeMan_tree_exited():$HitSound.playmusic()
func _on_SlimeMan2_tree_exited():$HitSound.playmusic()
func _on_SlimeMan3_tree_exited():$HitSound.playmusic()
func _on_WhiteMan_tree_exited():$HitSound.playmusic()
func _on_WhiteMan2_tree_exited():$HitSound.playmusic()
func _on_WhiteMan3_tree_exited():$HitSound.playmusic()
