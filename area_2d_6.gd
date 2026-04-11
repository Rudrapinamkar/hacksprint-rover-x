extends Area2D
@onready var mars: Sprite2D = $Mars2
func _ready():
	mouse_entered.connect(_on_hover)
	mouse_exited.connect(_on_exit)
func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		get_tree().change_scene_to_file("res://mars.tscn")
func _on_hover():
	$Mars2.modulate = Color(0.7, 0.7, 0.7)
func _on_exit():
	$Mars2.modulate = Color(1, 1, 1)
