extends Node3D

@onready var form = preload("res://scenes/form.tscn").instantiate()


@onready var pause_menu = $PauseMenu
var paused = false
func _process(_delta):
	if Input.is_action_just_pressed("ui_cancel"):
		_pauseMenu()
func _pauseMenu():
	if paused:
		pause_menu.hide()
		Engine.time_scale = 1
	else:
		pause_menu.show()
		Engine.time_scale = 0
	paused = !paused
	

func _ready():
	add_child(form)


func _on_player_hide_form():
	form._hide_form()


func _on_player_show_form():
	form._show_form()

