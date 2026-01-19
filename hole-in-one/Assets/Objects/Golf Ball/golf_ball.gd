extends CharacterBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func _physics_process(delta):
	var speed: float = 1
	var velocity = Vector2(1, -1)
	var collision = move_and_collide(velocity * speed)
	
	if collision:
		print("collision")
		velocity = velocity.bounce(collision.get_normal())
		#velocity *= 0.9
		#move_and_collide(collision.get_remainder())


func hit(direction: Vector2, speed: float):
	pass
