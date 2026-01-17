extends CharacterBody2D

var speed = 300
var direction = Vector2.ZERO
var is_active = false # New variable: acts as a On/Off switch

func _ready():
	reset_ball()
	

func reset_ball():
	position = Vector2(1280/2.0, 720/2.0)
	direction = Vector2.ZERO
	speed = 300
	is_active = false # Turn the switch OFF

func start_moving():
	# Determine direction
	var x_dir = [-1, 1].pick_random()
	var y_dir = randf_range(0.3, 1.0) 
	if randf() > 0.5:
		y_dir = -y_dir
	
	direction = Vector2(x_dir, y_dir).normalized()
	is_active = true # Turn the switch ON

func _physics_process(delta):
	# If the switch is OFF, wait for input
	if not is_active:
		if Input.is_action_just_pressed("resume"): # Make sure "resume" is in Input Map!
			start_moving()
			
		return # Stop reading the rest of the function until active

	# Standard movement logic
	var collision = move_and_collide(direction * speed * delta)
	
	if collision:
		direction = direction.bounce(collision.get_normal())
		speed += 5
		$BounceSound.play()
		$ColorRect.color = Color(randf(), randf(), randf())
		var camera = get_parent().get_node("Camera2D")
		if camera:
			camera.apply_shake(5.0)
