extends Node

class_name BuildingService

func _ready():
	var service_registry = ServiceRegistry.get_instance()
	var timer_service = TimerService.new()
	service_registry.register_service("TimerService", timer_service)
	var tim_service = service_registry.get_service("TimerService")
	if tim_service:
		var timer = tim_service.create_timer(2.0)
		add_child(timer)
		timer.connect("timeout", Callable(self, "_on_timer_completed"))
		timer.start()

func _on_timer_completed():
	print("Здание построено!")
