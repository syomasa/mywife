extends Node2D

@export var bullethellEndState = 0
var spawner = load("res://scenes/spawner.tscn")

func _ready():
	# wave 1
	for n in range(2):
		await get_tree().create_timer(2).timeout # wait 2sec
		var new_spawner = spawner.instantiate()
		new_spawner.bullet_interval = 0.2
		new_spawner.num_bullets = 2
		new_spawner.rotation_speed = 0.1
		new_spawner.movement_speed_x = 0
		new_spawner.movement_speed_y = 1
		new_spawner.pos_start_x = 0+(n*1000)
		new_spawner.pos_start_y = 0
		new_spawner.start_dir = PI/2
		new_spawner.time_to_live = 5
		add_child(new_spawner)
	
	await get_tree().create_timer(1).timeout # wait 1sec
	# wave 2
	for n in range(3):
		await get_tree().create_timer(1).timeout # wait 1sec
		var new_spawner = spawner.instantiate()
		new_spawner.bullet_interval = 0.2
		new_spawner.num_bullets = 1
		if n == 0:
			new_spawner.pos_start_x = 0
			new_spawner.pos_start_y = 0
			new_spawner.rotation_speed = 0
			new_spawner.movement_speed_x = 0
			new_spawner.movement_speed_y = 1
			new_spawner.start_dir = 0
			new_spawner.time_to_live = 3.8
		elif n == 1:
			new_spawner.pos_start_x = 0
			new_spawner.pos_start_y = 0
			new_spawner.rotation_speed = 0
			new_spawner.movement_speed_x = 1
			new_spawner.movement_speed_y = 0
			new_spawner.start_dir = PI/2
			new_spawner.time_to_live = 5
		else:
			new_spawner.pos_start_x = 1000
			new_spawner.pos_start_y = 0
			new_spawner.rotation_speed = 0
			new_spawner.movement_speed_x = 0
			new_spawner.movement_speed_y = 1
			new_spawner.start_dir = -PI
			new_spawner.time_to_live = 3.8
		add_child(new_spawner)
		
	await get_tree().create_timer(3).timeout # wait 3sec
	
	# wave 3
	for n in range(2):
		var new_spawner = spawner.instantiate()
		if n == 0:
			new_spawner.bullet_interval = 0.15
			new_spawner.num_bullets = 4
			new_spawner.rotation_speed = 0.02
			new_spawner.movement_speed_x = 0.5
			new_spawner.movement_speed_y = 0
			new_spawner.pos_start_x = 0
			new_spawner.pos_start_y = 0
			new_spawner.start_dir = PI/2
			new_spawner.time_to_live = 15
			
		elif n == 1:
			new_spawner.bullet_interval = 0.15
			new_spawner.num_bullets = 4
			new_spawner.rotation_speed = 0.02
			new_spawner.movement_speed_x = 0.5
			new_spawner.movement_speed_y = 0
			new_spawner.pos_start_x = 0
			new_spawner.pos_start_y = 600
			new_spawner.start_dir = PI/2
			new_spawner.time_to_live = 15
		add_child(new_spawner)
		await get_tree().create_timer(15).timeout # wait 2sec
	
	# wave 4
	for n in range(2):
		await get_tree().create_timer(2).timeout # wait 2sec
		var new_spawner = spawner.instantiate()
		new_spawner.bullet_interval = 0.25
		new_spawner.num_bullets = 2
		new_spawner.rotation_speed = 0.1
		new_spawner.movement_speed_x = 0
		new_spawner.movement_speed_y = 0.3
		new_spawner.pos_start_x = 50+(n*1000)
		new_spawner.pos_start_y = 50
		new_spawner.start_dir = PI/2
		new_spawner.time_to_live = 15
		add_child(new_spawner)
		
	for n in range(3):
		await get_tree().create_timer(3).timeout # wait 3sec
		var new_spawner = spawner.instantiate()
		new_spawner.bullet_interval = 0.2
		new_spawner.num_bullets = 1
		if n == 0:
			new_spawner.pos_start_x = 0
			new_spawner.pos_start_y = 0
			new_spawner.rotation_speed = 00
			new_spawner.movement_speed_x = 0
			new_spawner.movement_speed_y = 1
			new_spawner.start_dir = 0
			new_spawner.time_to_live = 3
		elif n == 1:
			new_spawner.pos_start_x = 0
			new_spawner.pos_start_y = 0
			new_spawner.rotation_speed = 00
			new_spawner.movement_speed_x = 1
			new_spawner.movement_speed_y = 0
			new_spawner.start_dir = PI/2
			new_spawner.time_to_live = 5
		else:
			new_spawner.pos_start_x = 1000
			new_spawner.pos_start_y = 0
			new_spawner.rotation_speed = 00
			new_spawner.movement_speed_x = 0
			new_spawner.movement_speed_y = 1
			new_spawner.start_dir = -PI
			new_spawner.time_to_live = 3
		add_child(new_spawner)


func _on_timer_timeout():
	bullethellEndState = 1
	print("Won game")
	Global.lastgamestate = bullethellEndState
	var scene = load("res://scenes/main_menu.tscn")
	#change_scene(scene)
