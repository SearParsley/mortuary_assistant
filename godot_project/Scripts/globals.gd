extends Node

@onready var form = preload("res://scenes/form.tscn").instantiate()
@onready var ghosts = {
	"jimmy": {
		"dialogue_path": "res://dialogue/test.dialogue",
		"dialogue_resource": "",
		"has_met": false
	},
	"ghost2": {
		"dialogue_path": "res://dialogue/test.dialogue",
		"dialogue_resource": "",
		"has_met": false
	},
	"ghost3": {
		"dialogue_path": "res://dialogue/test.dialogue",
		"dialogue_resource": "",
		"has_met": false
	},
	"ghost4": {
		"dialogue_path": "res://dialogue/test.dialogue",
		"dialogue_resource": "",
		"has_met": false
	},
	"ghost5": {
		"dialogue_path": "res://dialogue/test.dialogue",
		"dialogue_resource": "",
		"has_met": false
	},
	"ghost6": {
		"dialogue_path": "res://dialogue/test.dialogue",
		"dialogue_resource": "",
		"has_met": false
	},
	"ghost7": {
		"dialogue_path": "res://dialogue/test.dialogue",
		"dialogue_resource": "",
		"has_met": false
	},
	"ghost8": {
		"dialogue_path": "res://dialogue/test.dialogue",
		"dialogue_resource": "",
		"has_met": false
	},
	"ghost9": {
		"dialogue_path": "res://dialogue/test.dialogue",
		"dialogue_resource": "",
		"has_met": false
	},
}


func _ready():
	load_dialogues()


func load_dialogues():
	for ghost in ghosts.keys():
		var dialogue_path = ghosts[ghost]["dialogue_path"]
		ghosts[ghost]["dialogue_resource"] = load(dialogue_path)

