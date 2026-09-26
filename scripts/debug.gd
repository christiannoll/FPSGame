extends PanelContainer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#Hide debug panel on load
	visible = false
	
func _input(event):
	#Toggle debug panel
	if event.is_action_pressed("debug"):
		visible = !visible
