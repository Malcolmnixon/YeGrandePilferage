extends Node3D


func _on_coin_area_body_entered(body : Node3D):
	if body.is_in_group("character"):
		# TODO: Add score to player

		# Queue the coin stack for distruction
		queue_free()
