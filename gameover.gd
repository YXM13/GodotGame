extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _on_play_again_pressed():
	GameManager.reset_timer()
	GameManager.start_timer()
	get_tree().change_scene_to_file("res://scenes/game.tscn")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _on_quit_pressed():
	get_tree().quit()
