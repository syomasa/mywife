extends Node2D


# Called when the node enters the scene tree for the first time.
var bulletScene = preload("res://scenes/ToiletGame/bullet.tscn")
@onready var timer = $"./Timer"
@export var player_hit = 0

func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#print(timer.time_left)
	var viewport_size = get_viewport().get_visible_rect().size
	if timer.time_left < 0.08:
		position.x = randi() % int(viewport_size.x)
		var bullet = bulletScene.instantiate()
		bullet.position = position
		add_sibling(bullet)
