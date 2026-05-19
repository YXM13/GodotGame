extends Area2D



func _on_body_entered(body: Node2D) -> void:
	body.collectedCoins += 1
	print("You got the coin!")
	queue_free()
