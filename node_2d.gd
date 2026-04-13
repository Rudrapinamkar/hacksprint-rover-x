extends RigidBody2D
var angle = rad_to_deg(rotation)
var jet=2000
func _process(delta: float) -> void:
	Global.rot=rotation
	if angle > 180:
		print("end")
func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group("data"):
		Global.Data+=1
	if area.is_in_group("malwa"):
		Global.malwa+=1
func _on_body_entered(body: Node) -> void:
	if  Global.velo>=4:
		print("damaeg")
func _on_area_2d_2_area_entered(area: Area2D) -> void:
	if area.is_in_group("ground"):
		get_tree().quit()
	
