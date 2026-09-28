extends PanelContainer

var property
var frames_per_second: String

@onready var property_container = $MarginContainer/VBoxContainer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#Hide debug panel on load
	visible = false
	add_debug_property("test", "test")
	
func _input(event):
	#Toggle debug panel
	if event.is_action_pressed("debug"):
		visible = !visible

func add_debug_property(title: String, value):
	property = Label.new()
	property_container.add_child(property)
	property.name = title
	property.text = property.name + value
