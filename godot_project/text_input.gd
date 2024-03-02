extends Node

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



var text := ""

func _input(event: InputEvent) -> void:
	if event is InputEventKey and event.is_pressed():
		var key_press: InputEventKey = event
		match key_press.scancode:
			KEY_BACKSPACE:
				if !text.is_empty():
					text = text.left(text.length() - 1)
			_:
				text += char(key_press.unicode)
				
		print(text)
