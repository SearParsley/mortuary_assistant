extends Control

@onready var sprite = $Ghost_Sprite

func _ready():
	sprite.hide()
	Globals._show_ghost.connect(_on_show_ghost)


func _on_show_ghost(path):
	sprite.texture = load(path)
	sprite.show()
	
