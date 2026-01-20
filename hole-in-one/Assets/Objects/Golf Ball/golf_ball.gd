extends CharacterBody2D

@export var friction: float = 600.0 
var moving: bool = false

signal stopped(ballPosition: Vector2)
signal ballHit

func _ready():
	stopped.emit(position)

func _physics_process(delta):
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
		stopped.emit(position)
		print("current position", position)


func _on_cursor_mouse_released():
	velocity = Vector2(1000, 1000) # pixels/second
	ballHit.emit()
	moving = true
