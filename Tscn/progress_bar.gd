extends Control
@onready var label: Label = $Label
func _ready() -> void:
	pass 
func _process(delta: float) -> void:
	label.text=str(Global.Data)
