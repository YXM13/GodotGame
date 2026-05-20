extends Area2D

func _on_body_entered(body: Node2D) -> void:
	body.collectedCoins += 1
	print("You got the coin!")

	get_tree().current_scene.get_node("CanvasLayer/Control/VBoxContainer/coincounter").update_coin_count(body.collectedCoins)

	queue_free()
