extends Control

@onready var form_nodes = get_tree().get_nodes_in_group("Form")
@onready var form_text_nodes = get_tree().get_nodes_in_group("Form_Text")

var is_hidden = true
var in_hand = false

func _ready():
	_hide_form()
	pass


func _hide_form():
	for node in form_nodes:
		node.hide()
	is_hidden = true


func _show_form():
	if !in_hand: return
	for node in form_nodes:
		node.show()
	is_hidden = false


func _submit_form():
	_hide_form()
	in_hand = false


func _new_form():
	print("new_form")
	for node in form_text_nodes:
		node.text = ""
	_hide_form()
	in_hand = true

