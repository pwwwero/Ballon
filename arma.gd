extends Area2D

var bala = preload("res://bala.tscn")
var max_ammo: int = 3
var ammo: int = max_ammo

func _process(delta):
	print(ammo)
	if ammo > 0:
		shot()
	look_at(get_global_mouse_position())

func shot():
	if Input.is_action_just_pressed("lmb"):
		ammo -= 1
		if ammo <= 0:
			$Timer.start()
		var BALA = bala.instantiate()
		BALA.direction = $Marker2D.global_position - global_position
		BALA.global_position = $Marker2D.global_position
		get_tree().get_root().add_child(BALA)

func _on_timer_timeout() -> void: #one shot = false
	ammo = max_ammo
