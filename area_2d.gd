extends Area2D
@onready var mercury: Sprite2D = $".."

func _ready():
	mouse_entered.connect(_on_hover)
	mouse_exited.connect(_on_exit)
func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		print(name, "clicked")
func _on_hover():
	$"..".modulate = Color(0.7, 0.7, 0.7)
func _on_exit():
	$"..".modulate = Color(1, 1, 1)
