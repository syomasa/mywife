extends CharacterBody2D

@export var speed = 400

func get_input():
	var input_direction = Input.get_vector("bullethell_player_left", "bullethell_player_right", "bullethell_player_up", "bullethell_player_down")
	velocity = input_direction * speed

func _physics_process(delta):
	get_input()
	move_and_slide()
	
