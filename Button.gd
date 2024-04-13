extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_button_down():
	print("pressed")
	Dialogic.signal_event.connect(_on_dialogic_signal)
	Dialogic.start('timelines/intro_sequence')
	hide()

func _on_dialogic_signal(argument:String):
	print(argument)
	show()
