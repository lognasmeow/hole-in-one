extends Sprite2D

const grabHoverPng = preload("res://Assets/UI/Cursors/grab_hover.png")
const grabPng = preload("res://Assets/UI/Cursors/grab.png")
const linkPng = preload("res://Assets/UI/Cursors/link.png")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position = get_global_mouse_position()
	
	if Input.is_action_pressed("click"):
		texture = grabPng
	elif Input.is_action_just_released("click"):
		texture = grabHoverPng
