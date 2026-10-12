class_name WalkingPlayerState

extends State

@export var ANIMATION: AnimationPlayer
@export var TOP_ANIM_SPEED: float = 2.2

func enter() -> void:
	ANIMATION.play("Walking", -1.0, 1.0)

func update(delta: float) -> void:
	if Global.player.velocity.length() == 0.0:
		transition.emit("IdlePlayerState")
	
