extends Node
func _ready() -> void:
	pass 
func _process(delta: float) -> void:
	pass
func _on_area_entered(area: Area2D) -> void:
	Global.Data+=1
	queue_free()
