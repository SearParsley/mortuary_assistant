extends Control

@onready var form_nodes = get_tree().get_nodes_in_group("Form")
@onready var text_dict = {
	"name": "",
	"cause": "",
	"time": "",
	"kin": ""
	}
var is_hidden = true
var in_hand = false

func _ready():
	_hide_form()
	pass


func _on_name_text_changed(new_text):
	text_dict.name = new_text


func _on_cause_text_changed(new_text):
	text_dict.cause = new_text


func _on_time_text_changed(new_text):
	text_dict.time = new_text


func _on_kin_text_changed(new_text):
	text_dict.kin = new_text


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


func _new_form():
	in_hand = true
	text_dict = {
		"name": "",
		"cause": "",
		"time": "",
		"kin": ""
	}
	_show_form()

