extends Camera2D

# How quickly the shake stops
var decay = 0.8  
# Current shake strength
var shake_strength = 0.0  

func _process(delta):
	if shake_strength > 0:
		# Randomly offset the camera
		offset = Vector2(randf_range(-shake_strength, shake_strength), randf_range(-shake_strength, shake_strength))
		
		# Slowly reduce the shake to 0
		shake_strength = lerp(shake_strength, 0.0, decay * delta * 5) # Added *5 to make it snappy
	else:
		offset = Vector2.ZERO

# Call this function from your Ball script to start shaking
func apply_shake(intensity):
	shake_strength = intensity
