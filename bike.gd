extends RigidBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
const ANGULAR_VELOCITY_LIMIT = 20
const APPLIED_TORQUE = 100000

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#print(get_angular_velocity())
	if Input.is_action_pressed("ui_right") and get_angular_velocity() < ANGULAR_VELOCITY_LIMIT:
		set_applied_torque(APPLIED_TORQUE)
	elif Input.is_action_pressed("ui_left") and get_angular_velocity() > -ANGULAR_VELOCITY_LIMIT:
		set_applied_torque(-APPLIED_TORQUE)
	else:
		set_applied_torque(0)
	
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().reload_current_scene()
	
	pass

