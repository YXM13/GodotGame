extends Area2D



func _on_body_entered(body: Node2D) -> void:
	print("You took damage!")
	body.lives -= 1
	if(body.lives == 0):
		print("You died!")
		body.position = body.spawn_position
		body.lives = 3
