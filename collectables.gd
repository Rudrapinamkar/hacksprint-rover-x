extends Node
func _ready() -> void:
	pass # Replace with function body.
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
func _on_area_entered(area: Area2D) -> void:
	print("hi")
	Global.Data+=1
	queue_free()
