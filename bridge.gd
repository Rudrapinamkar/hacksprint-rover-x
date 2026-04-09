extends RigidBody2D
func _ready() -> void:
	pass # Replace with function body.
func _process(delta: float) -> void:
	pass
func create_line(start_pos: Vector2, direction: Vector2, length: float):
	var line = Line2D.new()
	var end_pos = start_pos + (direction.normalized() * length)
	line.add_point(Vector2(0, 0))       # Defaults to index -1
	line.add_point(Vector2(100, 100))   # Adds the second point at the end
	line.width = 5.0
	line.default_color = Color.CYAN
	get_tree().current_scene.add_child(line)
