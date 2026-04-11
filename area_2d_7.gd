extends Area2D
@onready var mars: Sprite2D = $Mars2
@onready var saturn: Sprite2D = $saturn

func _ready():
	mouse_entered.connect(_on_hover)
	mouse_exited.connect(_on_exit)
func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		print(name, "clicked")
func _on_hover():
	$saturn.modulate = Color(0.7, 0.7, 0.7)
func _on_exit():
	$saturn.modulate = Color(1, 1, 1)
