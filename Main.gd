extends Node
var service_registry = ServiceRegistry.get_instance()

func _ready():
	
	var localization_service = LocalizationService.new()
	var network_service = NetworkService.new()
	var build_service = BuildingService.new()

	service_registry.register_service("LocalizationService", localization_service)
	service_registry.register_service("NetworkService", network_service)
	service_registry.register_service("BuildingService", build_service)

	var loc_service = service_registry.get_service("LocalizationService")
	if loc_service:
		print(loc_service.get_localized_string("hello"))

	var net_service = service_registry.get_service("NetworkService")
	if net_service:
		net_service.check_connection()
		
	var bil_service = service_registry.get_service("BuildingService")
	if bil_service:
		add_child(bil_service)
			
	await get_tree().create_timer(10.0).timeout
	get_tree().quit()
		
func _exit_tree():
	service_registry.remove_service("LocalizationService")
	service_registry.remove_service("NetworkService")
	print("Сервисы удалены")
