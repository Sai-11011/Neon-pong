extends CharacterBody2D

@export var speed = 400
@export var paddle_id = 1

var start_x 

func _ready():
	# Remember exactly where we started on the X axis
	start_x = global_position.x

func _physics_process(_delta):
	var direction = 0
	
	if paddle_id == 1:
		direction = Input.get_axis("p1_up", "p1_down")
	else:
		direction = Input.get_axis("p2_up", "p2_down")
	
	velocity.y = direction * speed
	move_and_slide()
	
	global_position.x = start_x
	global_position.y = clamp(global_position.y, 50, 670)
