extends Node

var time := 0.0
var timer_running := true
var firstLevelTime 
var secondLevelTime
var thirdLevelTime

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if timer_running:
		time += delta

func stop_timer():
	timer_running = false
	print("Time to beat the game: ", format_time(time))

func format_time(x) -> String:
	var minutes := int(x / 60)
	var seconds := int(x) % 60
	var milliseconds := int((x - int(x)) * 100)
	return "%02d:%02d.%02d" % [minutes, seconds, milliseconds]
