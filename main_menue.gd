extends Node2D
func _ready() -> void:
	pass # Replace with function body.
func _process(delta: float) -> void:
	pass
func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://planet_transfer.tscn")
func _on_button_2_pressed() -> void:
		get_tree().quit()
func _on_button_3_pressed() -> void:
	get_tree().change_scene_to_file("res://control.tscn")
