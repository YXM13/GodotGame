extends Area2D




func _on_body_entered(body: Node2D) -> void:
	if(body.collectedCoins == 1):
		print("Wow, you actually beat the game... I'm impressed!")
		%GameManager.thirdLevelTime = %GameManager.time - %GameManager.firstLevelTime - %GameManager.secondLevelTime
		print("Time to beat third level: ", %GameManager.format_time(%GameManager.thirdLevelTime))
		%GameManager.stop_timer()
