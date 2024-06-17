extends Node

class_name LocalizationService

var localized_strings = {}

func _init():
	localized_strings["hello"] = "Привет"
	localized_strings["goodbye"] = "До свидания"

func get_localized_string(message: String) -> String:
	return localized_strings.get(message, "Сообщение не найдено")
