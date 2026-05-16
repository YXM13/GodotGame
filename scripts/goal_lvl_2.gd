extends Area2D




func _on_body_entered(body: Node2D) -> void:
	print("Ok ok you beat lvl 2. That's something at least")
	body.spawn_position = Vector2(4300, -50)
	body.position = body.spawn_position
