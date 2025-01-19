extends Area2D

var vrido1 = preload("res://vrido1.png")
var vrido2 = preload("res://vrido2.png")

func _ready():
	randomize()
	var textures = [vrido1,vrido2]
	var pick_texture = textures[randi()% textures.size()]
	$Sprite2D.texture = pick_texture

func _on_area_entered(area):
	if area.is_in_group("bala"):
		Global.vrido_morto += 1
		print("delete")
		queue_free()
