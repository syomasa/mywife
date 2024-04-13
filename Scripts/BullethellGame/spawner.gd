extends Node2D

var bullet_scene = load("res://scenes/bullet.tscn")
var bullet_interval = 0.1
var num_bullets = 1 # num of bullets fires at a time
var rotation_speed = 0.1
var movement_speed_x =  0
var movement_speed_y = 1
var pos_start_x = 100
var pos_start_y = 100
var start_dir = 1.64
var time_to_live = 5

# Called when the node enters the scene tree for the first time.
func _ready():
	self.position.x = pos_start_x
	self.position.y = pos_start_y
	self.rotation = start_dir
	$Timer.set_wait_time(bullet_interval)
	$Timer.start()
	$LiveTimer.set_wait_time(time_to_live)
	$LiveTimer.start()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rotate(rotation_speed)
	position.x += movement_speed_x
	position.y += movement_speed_y

func _spawn_bullets(num):
	for n in range(num):
		var b = bullet_scene.instantiate()
		b.position = self.position
		b.rotation = self.rotation + (n*PI/2)
		get_parent().add_child(b)

func _on_timer_timeout():
	_spawn_bullets(num_bullets)


func _on_live_timer_timeout():
	queue_free()
