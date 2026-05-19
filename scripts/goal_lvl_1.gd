extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body.collectedCoins == 1:
		print("Wow you beat level 1... gj ig")
		body.spawn_position = Vector2(4300, -50)
		body.position = body.spawn_position
		body.collectedCoins = 0
		
		get_tree().current_scene.get_node("CanvasLayer/Control/VBoxContainer/coincounter").update_coin_count(0)
		
		%GameManager.firstLevelTime = %GameManager.time
		print("Time to beat first level: ", %GameManager.format_time(%GameManager.time))
	else:
		print("You need to collect the coin first")
