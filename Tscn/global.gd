extends Node2D
var Data=0
var pot = Vector2.ZERO
func _ready() -> void:
	pass 

func _process(delta: float) -> void:
	if Global.Data>1:
		get_tree().quit()
