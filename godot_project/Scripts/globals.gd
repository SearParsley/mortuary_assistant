extends Node

@onready var ghosts = {
	"jimmy": {
		"dialogue_path": "res://dialogue/influencer_test.dialogue",
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

@onready var player
@onready var d_resource

var player_interact_item = Node


func _ready():
	load_dialogues()


func load_dialogues():
	for ghost in ghosts.keys():
		var dialogue_path = ghosts[ghost]["dialogue_path"]
		ghosts[ghost]["dialogue_resource"] = load(dialogue_path)


func run_dialogue(resource):
	d_resource = resource
	player.movement = false
	DialogueManager.show_dialogue_balloon(resource, "")

