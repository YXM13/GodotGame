extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if "collectedCoins" in body and body.collectedCoins == 1:

		print("Wow, you actually beat the game... I'm impressed!")

		%GameManager.thirdLevelTime = %GameManager.time - %GameManager.firstLevelTime - %GameManager.secondLevelTime
		print("Time to beat third level: ", %GameManager.format_time(%GameManager.thirdLevelTime))

		%GameManager.stop_timer()

		call_deferred("go_to_gameover")

	else:
		print("You need the coin first!")

func go_to_gameover():
	get_tree().change_scene_to_file("res://scenes/gameover.tscn")
	
