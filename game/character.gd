extends T5ToolsCharacterBodyController


# Handle movement changed events and play the animation
func _on_movement_changed(state : MovementState):
	match state:
		MovementState.IDLE:
			$Rogue/AnimationPlayer.current_animation = "Idle"

		MovementState.WALKING:
			$Rogue/AnimationPlayer.current_animation = "Walking_A"

		MovementState.RUNNING:
			$Rogue/AnimationPlayer.current_animation = "Running_A"

		MovementState.JUMPING:
			$Rogue/AnimationPlayer.current_animation = "Jump_Start"

		MovementState.FALLING:
			$Rogue/AnimationPlayer.current_animation = "Jump_Idle"

		MovementState.LANDED:
			$Rogue/AnimationPlayer.current_animation = "Jump_Land"
