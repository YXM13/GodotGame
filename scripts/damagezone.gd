extends Area2D



func _on_body_entered(body: Node2D) -> void:
<<<<<<< Updated upstream
	print("You died!")
	body.position = body.spawn_position
=======
	body.lives -= 1
	print("You lost a life")
	if(body.lives == 0):
		print("You died!")
		body.position = body.spawn_position
		body.lives = 3
>>>>>>> Stashed changes
