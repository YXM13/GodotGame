extends Area2D

@onready var timer: Timer = $Timer

var player = null

func _on_body_entered(body: Node2D) -> void:
	print("You died!")
	player = body
	timer.start()

func _on_timer_timeout() -> void:
	player.position = player.spawn_position
