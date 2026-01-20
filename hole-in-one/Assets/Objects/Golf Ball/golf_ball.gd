extends CharacterBody2D

@export var friction: float = 200.0 
var moving: bool = false

func _physics_process(delta):
	if Input.is_action_just_released("click"):
		moving = true
		velocity = Vector2(800, 800) # pixels/second

	if moving:
		hit(delta)

func hit(delta: float):
	var collision = move_and_collide(velocity * delta)
	if collision:
		velocity = velocity.bounce(collision.get_normal())
		move_and_collide(collision.get_remainder())

	velocity = velocity.move_toward(Vector2.ZERO, friction * delta)

	# clamp small values to exact zero and stop
	if velocity.length() < 1.0:
		velocity = Vector2.ZERO
		moving = false
