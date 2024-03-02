extends Node3D

@onready var form = preload("res://scenes/form.tscn").instantiate()
@onready var dialogues = {
	"char1": "res://dialogue/char1.dialogue",
	"char2": "res://dialogue/char2.dialogue",
	"char3": "res://dialogue/char3.dialogue",
	"char4": "res://dialogue/char4.dialogue",
	"char5": "res://dialogue/char5.dialogue",
	"char6": "res://dialogue/char6.dialogue",
	"char7": "res://dialogue/char7.dialogue",
	"char8": "res://dialogue/char8.dialogue",
	"char9": "res://dialogue/char9.dialogue",
}


func _ready():
	load_dialogues()
	add_child(form)


func load_dialogues():
	for char in dialogues.keys():
		var dialogue = dialogues[char]
		dialogues[char] = load("res://dialogue/test.dialogue")



func _on_player_hide_form():
	form.hide_form()


func _on_player_show_form():
	form.show_form()


