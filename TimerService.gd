extends Node
class_name TimerService

func create_timer(duration: float) -> Timer:
		var timer = Timer.new()
		timer.wait_time = duration
		return timer
