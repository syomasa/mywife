extends Node2D

@onready var player = $"./Player"
@onready var gameTimer = $"./GameTimer"
@onready var bulletSpawner = $"./BulletSpawner"
@export var endState = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if gameTimer.time_left == 0 and endState != -1:
		endState = 1
	elif player.is_hit == 1:
		endState = -1	

func _on_floorhit_body_entered(body):
	print(body) # Replace with function body.
	if body.is_class("RigidBody2D"):
		body.queue_free()
