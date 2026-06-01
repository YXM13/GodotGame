extends Control

@onready var heart_label = $HBoxContainer/Label

func _process(_delta: float) -> void:
	var player = get_tree().get_first_node_in_group("player")

	if player:
		set_lives(player.lives)

func set_lives(amount):
	heart_label.text = str(amount)
