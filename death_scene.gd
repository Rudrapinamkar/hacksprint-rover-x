extends Node2D
@onready var gemini_generated_image_om_4_hjjom_4_hjjom_4h: Sprite2D = $GeminiGeneratedImageOm4Hjjom4Hjjom4h
func _ready() -> void:
	pass # Replace with function body.
func _process(delta: float) -> void:
	gemini_generated_image_om_4_hjjom_4_hjjom_4h.position.x-=20*delta
func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://main_menue.tscn")
