extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func _process(delta):
	position.x += 1
	position.y += 1


func hit(direction: Vector2, speed: float):
	pass
