extends Area2D
@onready var neptune: Sprite2D = $Neptune

func _ready():
	mouse_entered.connect(_on_hover)
	mouse_exited.connect(_on_exit)
func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		get_tree().change_scene_to_file("res://neptune.tscn")
func _on_hover():
	$Neptune.modulate = Color(0.7, 0.7, 0.7)
func _on_exit():
	$Neptune.modulate = Color(1, 1, 1)
