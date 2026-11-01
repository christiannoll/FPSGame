class_name SprintingPlayerState extends State

@export var ANIMATION: AnimationPlayer
@export var TOP_ANIM_SPEED: float = 1.0


func enter() -> void:
	ANIMATION.play("Sprinting", -1.0, 1.0)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func update(delta: float) -> void:
	set_animation_speed(Global.player.velocity.length())

func set_animation_speed(spd):
	var alpha = remap(spd, 0.0, Global.player.SPEED_DEFAULT, 0.0, 1.0)
	ANIMATION.speed_scale = lerp(0.0, TOP_ANIM_SPEED, alpha)
	
func _input(event):
	if event.is_action_pressed("sprint"):
		transition.emit("WalkingPlayerState")
