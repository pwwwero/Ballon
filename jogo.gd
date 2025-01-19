extends Node2D



func _process(delta):
	if Global.cacto_morto == 5:
		$animation_boss1/ColorRect.show()
		$animation_boss1/AnimationPlayer.play("boss1")

func _on_animation_player_animation_finished(anim_name):
	get_tree().change_scene_to_file("res://bossroom.tscn")
