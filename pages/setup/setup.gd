class_name Setup extends Page

const SETUP_FILE_PATH = "user://is_sat_up"

@export var edit: LineEdit

var property: String = "gochi_name"

func _ready() -> void:
	var sig: Signal = SettingsStore.get(property + "_changed")
	assert(sig, "Couldn't find signal " + property + " in Stats")
	sig.connect(update_text)

	edit.text = SettingsStore.get(property)

func update_text(_value: String) -> void:
	if edit.text == _value:
		return

	edit.text = _value

func _on_line_edit_text_changed(new_text: String) -> void:
	SettingsStore.set(property, new_text)

func _on_save_button_pressed() -> void:
	SettingsStore.save()
	var file = FileAccess.open(SETUP_FILE_PATH, FileAccess.WRITE)
	file.store_string("")
	
	PageManager.goto_page(PageManager.default_page)
