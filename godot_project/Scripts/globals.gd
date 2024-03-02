extends Node

@onready var ghosts = {
	"jimmy": {
		"dialogue_path": "res://dialogue/jimmy.dialogue",
		"dialogue_resource": "",
		"has_met": false,
		"sprite_path": "../../res://assets/Sprites/ghosts/pink_ghost2x.png",
	},
	"hough": {
		"dialogue_path": "res://dialogue/hough.dialogue",
		"dialogue_resource": "",
		"has_met": false,
		"sprite_path": "res://assets/Sprites/ghosts/star_ghost2x.png",
	},
	"perl": {
		"dialogue_path": "res://dialogue/perl.dialogue",
		"dialogue_resource": "",
		"has_met": false,
		"sprite_path": "res://assets/Sprites/ghosts/green_ghost2x.png",
	},
	"beverly": {
		"dialogue_path": "res://dialogue/beverly.dialogue",
		"dialogue_resource": "",
		"has_met": false,
		"sprite_path": "res://assets/Sprites/ghosts/pokey_ghost2x.png",
	},
	"jack": {
		"dialogue_path": "res://dialogue/jack.dialogue",
		"dialogue_resource": "",
		"has_met": false,
		"sprite_path": "res://assets/Sprites/ghosts/star_ghost2x.png",
	},
	"ghost6": {
		"dialogue_path": "res://dialogue/test5.dialogue",
		"dialogue_resource": "",
		"has_met": false,
		"sprite_path": "res://assets/Sprites/ghosts/star_ghost2x.png",
	},
	"ghost7": {
		"dialogue_path": "res://dialogue/test5.dialogue",
		"dialogue_resource": "",
		"has_met": false,
		"sprite_path": "res://assets/Sprites/ghosts/star_ghost2x.png",
	},
	"ghost8": {
		"dialogue_path": "res://dialogue/test5.dialogue",
		"dialogue_resource": "",
		"has_met": false,
		"sprite_path": "res://assets/Sprites/ghosts/star_ghost2x.png",
	},
	"ghost9": {
		"dialogue_path": "res://dialogue/test5.dialogue",
		"dialogue_resource": "",
		"has_met": false,
		"sprite_path": "res://assets/Sprites/ghosts/star_ghost2x.png",
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
	_show_ghost.emit(ghosts[ghost]["sprite_path"])
	DialogueManager.show_dialogue_balloon(ghosts[ghost]["dialogue_resource"], "")
