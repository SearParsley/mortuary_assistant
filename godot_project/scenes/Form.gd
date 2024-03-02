extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	var font = $Form.get_font("string_name", "")
	font.size = 8
