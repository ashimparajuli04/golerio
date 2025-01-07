extends Node

var score = 0

@onready var label_2: Label = $Label2
@onready var platform_2: AnimatableBody2D = $Platform2
@onready var animation_player: AnimationPlayer = $Platform2/AnimationPlayer
@onready var label_3: Label = $Label3
@onready var label_6: Label = $Label6

func add_point():
	score += 1
	print("Score updated:", score)
	
	# Update the label with the current score
	label_2.text = "Congrats! \n You collected " + str(score) + " coins."
	
	# Start the platform animation when score reaches 16
	if score == 16:
		label_2.text = "Congrats! \n You collected " + str(score) + " coins."
		label_3.text = "wait for platform to come and take you"
		label_6.text = "Thank You my friend For collecting all coins"
		print("Starting platform animation!")
		animation_player.play("move") 
	if score != 16:
		label_2.text = "You collected only " + str(score) + " coins. Please bring them all my friend" # Replace "move" with the actual name of your animation
		label_3.text = "Visit me once all coins are collected"
		label_6.text = ""
