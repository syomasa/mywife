extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	if Global.lastgamestate != 0:
		Dialogic.signal_event.connect(_on_dialogic_signal)
		Dialogic.start('timelines/intro_sequence')
		hide()
	else:
		pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_button_down():
	print("player name")
	print(Global.playername)
	Dialogic.signal_event.connect(_on_dialogic_signal)
	Dialogic.start('timelines/intro_sequence')
	hide()

func _on_dialogic_signal(argument:String):
	print(argument)
	print(Global.chaptstate)
	#if argument == "next_timeline":
	#	Dialogic.disconnect()
	if argument == "balance":
		var scene = load("res://scenes/balance_game.tscn")
		var instance = scene.instantiate()
		get_tree().change_scene_to_file("res://scenes/balance_game.tscn")
