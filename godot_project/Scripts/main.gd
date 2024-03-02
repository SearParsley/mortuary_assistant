extends Node3D

@onready var form = preload("res://scenes/form.tscn").instantiate()
@onready var player = $Player
@onready var pause_menu = $PauseMenu

@onready var ToDoBasketFStack = $ToDoBaskst/Fullstack
@onready var ToDoBasketHStack = $ToDoBaskst/Halfstack
@onready var ToDoBasketLStack = $ToDoBaskst/Lowstack

@onready var CoBasketFStack = $CompleteBasket/Fullstack
@onready var CoBasketHStack = $CompleteBasket/Halfstack
@onready var CoBasketLStack = $CompleteBasket/Lowstack



var formsToFill = 9
var CoFull = false



var paused = false
func _process(_delta):
	if Input.is_action_just_pressed("ui_cancel"):
		_pauseMenu()
	
	if formsToFill == 9:
		ToDoBasketFStack.show()
		ToDoBasketHStack.hide()
		ToDoBasketLStack.hide()
		CoBasketFStack.hide()
		CoBasketHStack.hide()
		CoBasketLStack.hide()
	if formsToFill >= 4 && formsToFill < 7:
		ToDoBasketFStack.hide()
		ToDoBasketHStack.show()
		ToDoBasketLStack.hide()
		CoBasketFStack.hide()
		CoBasketHStack.hide()
		CoBasketLStack.show()
	if formsToFill >= 1 && formsToFill < 4:
		ToDoBasketFStack.hide()
		ToDoBasketHStack.hide()
		ToDoBasketLStack.show()
		CoBasketFStack.hide()
		CoBasketHStack.show()
		CoBasketLStack.hide()
	if formsToFill == 0:
		ToDoBasketFStack.hide()
		ToDoBasketHStack.hide()
		ToDoBasketLStack.hide()
		CoBasketFStack.show()
		CoBasketHStack.hide()
		CoBasketLStack.hide()
		CoFull = true
		
	if CoFull:
		_end_game()
	
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


func _on_static_body_3d_new_form():
	form._new_form()


func _on_static_body_3d_submit_form():
	form._submit_form()

func _end_game():
	pass
