extends Node

@onready var ghosts = {
	"jimmy": {
		"dialogue_path": "res://dialogue/jimmy.dialogue",
		"dialogue_resource": "",
		"has_met": false,
	},
	"hough": {
		"dialogue_path": "res://dialogue/hough.dialogue",
		"dialogue_resource": "",
		"has_met": false,
	},
	"perl": {
		"dialogue_path": "res://dialogue/perl.dialogue",
		"dialogue_resource": "",
		"has_met": false,
	},
	"beverly": {
		"dialogue_path": "res://dialogue/beverly.dialogue",
		"dialogue_resource": "",
		"has_met": false,
	},
	"jack": {
		"dialogue_path": "res://dialogue/jack.dialogue",
		"dialogue_resource": "",
		"has_met": false,
	},
	"brenda": {
		"dialogue_path": "res://dialogue/brenda.dialogue",
		"dialogue_resource": "",
		"has_met": false,
	},
	"luke": {
		"dialogue_path": "res://dialogue/luke.dialogue",
		"dialogue_resource": "",
		"has_met": false,
	},
	"kole": {
		"dialogue_path": "res://dialogue/kole.dialogue",
		"dialogue_resource": "",
		"has_met": false,
	},
	"throckmorton": {
		"dialogue_path": "res://dialogue/throckmorton.dialogue",
		"dialogue_resource": "",
		"has_met": false,
	},
	"justin": {
		"dialogue_path": "res://dialogue/justin.dialogue",
		"dialogue_resource": "",
		"has_met": false,
	},
}

@onready var player

signal _show_ghost

var player_interact_item = Node


func _ready():
	load_dialogues()


func load_dialogues():
	for ghost in ghosts.keys():
		var dialogue_path = ghosts[ghost]["dialogue_path"]
		ghosts[ghost]["dialogue_resource"] = load(dialogue_path)


func _run_dialogue(ghost):
	player.movement = false
	DialogueManager.show_dialogue_balloon(ghosts[ghost]["dialogue_resource"], "")
