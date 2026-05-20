extends Node

var time := 0.0
var timer_running := false
var firstLevelTime: float = 0.0 
var secondLevelTime: float = 0.0 
var thirdLevelTime: float = 0.0 


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if timer_running:
		time += delta
		
func start_timer():
	timer_running = true
	
func stop_timer():
	timer_running = false
	print("Time to beat the game: ", format_time(time))

func reset_timer():
	time = 0.0
	timer_running = false

func format_time(x) -> String:
	var minutes := int(x / 60)
	var seconds := int(x) % 60
	var milliseconds := int((x - int(x)) * 100)
	return "%02d:%02d.%02d" % [minutes, seconds, milliseconds]
