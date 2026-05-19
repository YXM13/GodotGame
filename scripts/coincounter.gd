extends Control

@onready var coin_label: Label = $HBoxContainer/CoinLabel

func update_coin_count(amount: int) -> void:
	coin_label.text = str(amount) + "/1"
