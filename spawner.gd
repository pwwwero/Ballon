extends Node2D

var cacto = preload("res://cacto.tscn")



func _on_timer_timeout():
	$Timer.start()
	var CACTO = cacto.instantiate()
	CACTO.position = Vector2(randi_range(50,450), randi_range(50, 450))
	add_child(CACTO)
