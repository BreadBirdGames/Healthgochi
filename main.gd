extends Control

@export var entry: LineEdit;

func _on_button_pressed() -> void:
	NotificationHandler.Notify(entry.text)
	pass # Replace with function body.
