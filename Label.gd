extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var start_time = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	start_time = OS.get_ticks_msec()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var time_elapsed = (OS.get_ticks_msec() - start_time) / 1000.0
	if not get_parent().get_node("FinishLabel").visible:
		set_text("Time: %s" % time_elapsed)
	pass
