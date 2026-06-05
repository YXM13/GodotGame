extends Area2D



func _on_body_entered(body: Node2D) -> void:
	var player = get_tree().get_first_node_in_group("player")
	print("You took damage!")
	body.lives -= 1
	if(body.lives == 0):
		print("You died!")
		body.position = body.spawn_position
		body.lives = 3
