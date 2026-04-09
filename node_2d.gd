extends RigidBody2D

func _process(delta: float) -> void:
	pass

func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group("data"):
		Global.Data+=1
		print("hhi")
		
