extends Node2D
@onready var line_2d: Line2D = $line
@onready var collision_poly = $StaticBody2D/CollisionPolygon2D

var drawing = false
var points = PackedVector2Array()
var min_distance = 10.0 # How many pixels to move before adding a new point

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			if event.pressed:
				start_drawing()
			else:
				stop_drawing()

	if event is InputEventMouseMotion and drawing:
		var pos = get_global_mouse_position()
		
		if points.is_empty() or pos.distance_to(points[-1]) > min_distance:
			points.append(pos)
			line_2d.points = points

func start_drawing():
	drawing = true
	points.clear()
	line_2d.points = points
	# Reset collision so the car doesn't hit the old bridge
	collision_poly.polygon = PackedVector2Array()

func stop_drawing():
	drawing = false
	if points.size() > 1:
		bake_physics()

func bake_physics():
	var thick_points = Geometry2D.offset_polyline(points, 5.0)
	
	if thick_points.size() > 0:
		collision_poly.polygon = thick_points[0]
