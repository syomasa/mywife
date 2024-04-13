extends Node2D

@onready var timer = $"./Timer"
@onready var progressBar = $"./ProgressBar"
@onready var TimeLeftText = $"./TimeLeftText"
@export var timeLeft: float = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	timer.wait_time = progressBar.value




# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	progressBar.value = timer.time_left
	TimeLeftText.text = "[center]%.2f[/center]" % timer.time_left
	timeLeft = timer.time_left
