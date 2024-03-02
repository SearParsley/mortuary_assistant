extends Node3D

@onready var form = preload("res://scenes/form.tscn").instantiate()


func _ready():
	add_child(form)


func _on_player_hide_form():
	form.hide_form()


func _on_player_show_form():
	form.show_form()


