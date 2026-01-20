extends Node2D

@onready var connectingLine: Line2D = $connectingLine
@onready var cursor: Sprite2D = $cursor
@onready var ball: CharacterBody2D = $GolfBall

func _ready():
	connectingLine.set_point_position(1, ball.position)

func _process(delta):
	connectingLine.set_point_position(0, cursor.position)

func _on_golf_ball_stopped(ballPosition):
	if connectingLine:
		connectingLine.visible = true
		connectingLine.set_point_position(1, ballPosition)


func _on_golf_ball_ball_hit():
	connectingLine.visible = false
