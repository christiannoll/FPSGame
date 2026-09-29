extends PanelContainer

var property
var frames_per_second: String

@onready var property_container = $MarginContainer/VBoxContainer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# Set global reference to self in Global Singleton
	Global.debug = self
	# Hide debug panel on load
	visible = false
	add_debug_property("FPS", frames_per_second)
	
func _process(delta: float) -> void:
	if visible:
		frames_per_second = "%.2f" % (1.0/delta) # Gets frames per second every frame
		# frames_per_second = Engine.get_frames_per_second() # Gets frames per second every second frame
		property.text = property.name + ": " + frames_per_second
	
func _input(event):
	#Toggle debug panel
	if event.is_action_pressed("debug"):
		visible = !visible

func add_debug_property(title: String, value):
	property = Label.new()
	property_container.add_child(property)
	property.name = title
	property.text = property.name + value
