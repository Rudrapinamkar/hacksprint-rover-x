extends StaticBody2D
@onready var coll_poly: CollisionPolygon2D = $CollisionPolygon2D

func _ready() -> void:
	# 1. Create the CollisionPolygon2D node
	var coll_poly = CollisionPolygon2D.new()
	add_child(coll_poly)
	
	# 2. Define the size of your square
	var size = 100.0
	
	# 3. Define the 4 corners (Clockwise or Counter-clockwise)
	var points = PackedVector2Array([
		Vector2(0, 0),          # Top Left
		Vector2(size, 0),       # Top Right
		Vector2(size, size),    # Bottom Right
		Vector2(0, size)        # Bottom Left
	])
	
	# 4. Assign the points to the polygon
	coll_poly.polygon = points
