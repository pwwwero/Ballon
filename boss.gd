extends CharacterBody2D

var life = 10

func _process(delta):
	if life == 0:
		get_tree().change_scene_to_file("res://jogo_2.tscn")


func _on_area_2d_area_entered(area):
	if area.is_in_group("bala"):
		life -= 1


func _on_timer_timeout():
	randomize()
	var anim_name = ["atackq", "atack2", "atack3", "RESET"]
	var pick = anim_name[randi()% anim_name.size()]
	$AnimationPlayer2.play(pick)
