extends RigidBody2D
var wheels=[]
var speed=500
var max_speed=50

func _ready() -> void:
	pass


func _physics_process(delta):
	if Input.is_action_pressed("left"):
		if angular_velocity > -max_speed:
			apply_torque_impulse(-speed*delta*60)
	
	if Input.is_action_pressed("right"):
		if angular_velocity<max_speed:
			apply_torque_impulse(speed*delta*60)
