extends StaticBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var poly = get_child(0)
	var collisionPoly = CollisionPolygon2D.new()
	collisionPoly.polygon = poly.polygon
	collisionPoly.transform = poly.transform
	add_child(collisionPoly)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):

	pass
