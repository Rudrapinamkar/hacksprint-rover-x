extends Area2D
@onready var sprite: Sprite2D = $Sun_2

func _ready():
	mouse_entered.connect(_on_hover)
	mouse_exited.connect(_on_exit)
func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		print(name, "clicked")
func _on_hover():
	$Sun_2.modulate = Color(0.7, 0.7, 0.7)
func _on_exit():
	$Sun_2.modulate = Color(1, 1, 1)
