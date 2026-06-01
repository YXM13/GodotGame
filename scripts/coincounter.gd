extends Control

@onready var coin_label: Label = find_child("CoinLabel", true, false)

func update_coin_count(amount: int) -> void:
	coin_label.text = str(amount) + "/1"
