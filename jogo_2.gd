extends Node2D

var vrido = preload("res://vrido.tscn")



func _process(delta):
	pass


func add_vrido():
	var VRIDO = vrido.instantiate()
	VRIDO.position = Vector2(randi_range(50,450), randi_range(50, 450))
	add_child(VRIDO)


func _on_timer_timeout():
	add_vrido()
