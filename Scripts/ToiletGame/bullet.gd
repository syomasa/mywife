extends RigidBody2D

# Called when the node enters the scene tree for the first time.

func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var colliding_bodies = get_colliding_bodies()
	if colliding_bodies:
		if colliding_bodies[0].is_class("CharacterBody2D"):
			colliding_bodies[0].is_hit = 1
			
		
