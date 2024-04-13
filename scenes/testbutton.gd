extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_button_down():
	pass # Replace with function body.
	Global.lastgamestate = 1
	var scene = load("res://scenes/main_menu.tscn")
	get_tree().change_scene_to_packed(scene)
