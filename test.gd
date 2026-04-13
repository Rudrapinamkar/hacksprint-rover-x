extends CharacterBody2D

# Physics constants
const THRUST := 0.07
const SIDE_ACCEL := 0.12
const TILT_SPEED := 0.015
const MAX_TILT := 0.5
const TILT_DAMPING := 0.92
const MAX_ANGULAR_VEL := 0.06
const BOOST_MULTIPLIER := 1.5
const FUEL_CONSUMPTION := 0.15
const WOBBLE_AMOUNT := 0.002

var vx := 0.0
var vy := 0.0
var angular_vel := 0.0
var fuel := 100.0
var thrusting := false
var gravity := 0.03

func _physics_process(_delta: float) -> void:
	var shift_held := Input.is_key_pressed(KEY_SHIFT)
	var boost := BOOST_MULTIPLIER if Input.is_key_pressed(KEY_SPACE) else 1.0

	# --- Side movement vs tilt ---
	if shift_held:
		# Tilt mode
		if Input.is_action_pressed("ui_left"):
			angular_vel -= TILT_SPEED
		if Input.is_action_pressed("ui_right"):
			angular_vel += TILT_SPEED
	else:
		# Strafe mode (no tilt)
		if Input.is_action_pressed("ui_left"):
			vx -= SIDE_ACCEL
		if Input.is_action_pressed("ui_right"):
			vx += SIDE_ACCEL

	# --- Tilt damping & spring-back ---
	angular_vel *= TILT_DAMPING
	if not shift_held and not Input.is_action_pressed("ui_left") and not Input.is_action_pressed("ui_right"):
		angular_vel -= rotation * 0.02  # spring back to upright

	angular_vel = clampf(angular_vel, -MAX_ANGULAR_VEL, MAX_ANGULAR_VEL)
	angular_vel += randf_range(-WOBBLE_AMOUNT, WOBBLE_AMOUNT)
	rotation += angular_vel
	rotation = clampf(rotation, -MAX_TILT, MAX_TILT)

	# --- Thrust with boost ---
	thrusting = Input.is_action_pressed("ui_up") and fuel > 0
	if thrusting:
		vx -= sin(rotation) * THRUST * boost
		vy -= cos(rotation) * THRUST * boost
		fuel = maxf(0.0, fuel - FUEL_CONSUMPTION * boost)

	# --- Gravity ---
	vy += gravity

	# --- Apply movement ---
	position.x += vx
	position.y += vy
