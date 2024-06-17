extends Node

class_name NetworkService

var is_connected: bool = false

func check_connection() -> void:
	is_connected = true
	print("Сеть: ", is_connected)
