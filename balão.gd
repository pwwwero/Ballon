extends CharacterBody2D




func _physics_process(delta):
	if Input.is_action_pressed("a"):
		velocity.x = -150
	elif Input.is_action_pressed("d"):
		velocity.x = 150
	else:
		velocity.x = 0
		
	if Input.is_action_pressed("w"):
		velocity.y = -150
	elif Input.is_action_pressed("s"):
		velocity.y = 150
	else:
		velocity.y = 0
	move_and_slide()
