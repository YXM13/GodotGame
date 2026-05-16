extends Area2D


func _on_body_entered(body: Node2D) -> void:
	print("Wow you beat level 1... gj ig")
	body.spawn_position = Vector2(4300, -50)
	body.position = body.spawn_position
