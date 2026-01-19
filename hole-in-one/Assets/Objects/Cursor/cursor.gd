extends Sprite3D

const grabHoverPng = preload("res://Assets/UI/Cursors/grab_hover.png")
const grabPng = preload("res://Assets/UI/Cursors/grab.png")
const linkPng = preload("res://Assets/UI/Cursors/link.png")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("click"):
		texture = grabPng
	elif Input.is_action_just_released("click"):
		texture = grabHoverPng
