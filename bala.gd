extends Area2D

var direction = Vector2.RIGHT
var bulet_speed = 250

func _physics_process(delta):
	translate(direction.normalized() * bulet_speed * delta)


func _on_area_entered(area):
	queue_free()
