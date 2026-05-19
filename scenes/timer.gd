extends Control

@onready var timer_label = $HBoxContainer/Label

func _process(_delta):
	timer_label.text = GameManager.format_time(GameManager.time)
