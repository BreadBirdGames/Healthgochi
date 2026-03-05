class_name HealthIndex extends Page

func _on_sleep_button_pressed() -> void:
	PageManager.goto_page(Type.HEALTH_SLEEP)

func _on_water_button_pressed() -> void:
	PageManager.goto_page(Type.HEALTH_WATER)

func _on_food_button_pressed() -> void:
	PageManager.goto_page(Type.HEALTH_FOOD)
