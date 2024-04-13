extends RigidBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0
var rotationSpeed: float = 2.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var scene = preload("res://scenes/ball.tscn")
var force: float = 1000


@onready var pin_joint: PinJoint2D = $"../PinJoint2D"
@onready var game: Node2D = $"../"
@onready var rightSide: Area2D = $right_side
@onready var leftSide: Area2D = $left_side

func _ready():
	set_gravity_scale(0)
	

func _physics_process(delta):
	# Update right side positions
	
	
	if Input.is_action_pressed("ui_right"):
		apply_torque_impulse(2000.0)
		
	if Input.is_action_pressed("ui_left"):
		apply_torque_impulse(-2000.0)


func _input(event) -> void:
	print(event)
