extends Node2D

@export var bullethellEndState = 0

func _ready():
	pass
	
func _process(delta):
	self.position += Vector2(2, 0).rotated(self.rotation)

func _on_area_2d_body_entered(body):
	if body.name == "CharacterBody2D":
		bullethellEndState = -1
		print("Bullethell lost")
		Global.lastgamestate = bullethellEndState
		var scene = load("res://scenes/main_menu.tscn")
		#change_scene(scene)

func _on_timer_timeout():
	queue_free()
