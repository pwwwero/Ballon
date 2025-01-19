extends CharacterBody2D

var cacto1 = preload("res://cacto1.png")
var cacto2 = preload("res://cacto2.png")

func _ready():
	randomize()
	var textures = [cacto1,cacto2]
	var pick_texture = textures[randi()% textures.size()]
	$Sprite2D.texture = pick_texture


func _on_cactoo_area_entered(area):
	if area.is_in_group("bala"):
		Global.cacto_morto += 1
		print("delete")
		queue_free()
