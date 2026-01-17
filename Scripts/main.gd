extends Node2D

var score := [0, 0]

func _ready():
	$CanvasLayer2/winner.visible = false

# This function runs every single frame
func _process(_delta):
	# We listen for the Space bar ONLY if the game is over (winner text is visible)
	if $CanvasLayer2/winner.visible:
		if Input.is_action_just_pressed("resume"):
			# 1. Hide the text
			$CanvasLayer2/winner.visible = false
			# 2. Reset the internal score
			score = [0, 0]
			# 3. Update the display to show "0 - 0"
			$CanvasLayer/ScoreDisplay.text = "0 - 0"

func _on_left_goal_body_entered(_body: Node2D):
	score[1] += 1 
	
	$ball.reset_ball() 
	update_score()

func _on_right_goal_body_entered(_body: Node2D):
	score[0] += 1 
	$ball.reset_ball() 
	update_score()

func update_score():
	$CanvasLayer/ScoreDisplay.text = str(score[0]) + " - " + str(score[1])
	$score.play()
	# Check if someone won
	var winner_name = win()
	if winner_name != null:
		$CanvasLayer2/winner.visible = true
		$CanvasLayer2/winner/winner.text = winner_name + " Won.\nPress Space to restart"

func win():
	# Simple win logic: First to 3 wins
	if score[0]>=11 || score[1]>=11:
		if score[0] > score[1]+1:
			return "P1"
		elif score[1] > score[0]+1:
			return "P2"
	return null
