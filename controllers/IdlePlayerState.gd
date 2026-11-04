class_name IdlePlayerState

extends PlayerMovementState

func enter() -> void:
	ANIMATION.pause()

func update(delta: float) -> void:
	if PLAYER.velocity.length() > 0.0 and PLAYER.is_on_floor():
		transition.emit("WalkingPlayerState")
