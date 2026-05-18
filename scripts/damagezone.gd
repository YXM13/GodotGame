extends Area2D



func _on_body_entered(body: Node2D) -> void:
	print("You died!")
	body.position = body.spawn_position
