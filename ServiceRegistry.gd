extends Node
class_name ServiceRegistry

var services = {}
static var instance: ServiceRegistry = null

static func get_instance() -> ServiceRegistry:
	if instance == null:
		instance = ServiceRegistry.new() 
	return instance
# рг
func register_service(service_class: String, instance: Object) -> void:
	if services.has(service_class):
		print("Сервис уже зарегистирован: ", service_class)
		return
	services[service_class] = instance
	print("Сервис зарегистрирован: ", service_class)

# гт
func get_service(service_class: String) -> Object:
	if services.has(service_class):
		return services[service_class]
	print("Сервис не найден: ", service_class)
	return null

# уд
func remove_service(service_class: String) -> void:
	if services.has(service_class):
		services.erase(service_class)
		print("Сервис удален: ", service_class)
