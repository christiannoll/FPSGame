class_name SprintingPlayerState 

extends PlayerMovementState

@export var TOP_ANIM_SPEED: float = 1.0


func enter() -> void:
	ANIMATION.play("Sprinting", 0.5, 1.0)
	PLAYER._speed = PLAYER.SPEED_SPRINTING
	
func update(delta: float) -> void:
	set_animation_speed(PLAYER.velocity.length())

func set_animation_speed(spd):
	var alpha = remap(spd, 0.0, PLAYER.SPEED_SPRINTING, 0.0, 1.0)
	ANIMATION.speed_scale = lerp(0.0, TOP_ANIM_SPEED, alpha)
	
func _input(event):
	if event.is_action_released("sprint"):
		transition.emit("WalkingPlayerState")
