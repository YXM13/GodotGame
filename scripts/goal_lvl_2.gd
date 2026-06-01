extends Area2D




func _on_body_entered(body: Node2D) -> void:
	if(body.collectedCoins == 1):
		print("Ok ok you beat lvl 2. That's something at least")
		body.spawn_position = Vector2(7830, -50)
		body.position = body.spawn_position
		body.lives = 3
		body.collectedCoins = 0	
		get_tree().current_scene.get_node("CanvasLayer/Control/VBoxContainer/coincounter").update_coin_count(0)

		%GameManager.secondLevelTime = %GameManager.time - %GameManager.firstLevelTime
		print("Time to beat second level: ", %GameManager.format_time(%GameManager.secondLevelTime))
	else:
		print("You need the coin first!")
