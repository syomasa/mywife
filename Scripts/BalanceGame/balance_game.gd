extends Node2D


@onready var ball = $"./Ball"
@onready var floor = $"./floor"
@onready var platform = $"./platform"
@onready var timer = $"./Timer"

@export var endState = 0 # -1 lost, 1 win, 0 game playing

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var ball_contacts = ball.get_colliding_bodies()
	if floor in ball_contacts:
		endState = -1
		print("Lost game")
		
	elif timer.timeLeft == 0:
		endState = 1
		print("Won game")
