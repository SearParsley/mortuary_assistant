extends Node

@onready var ghosts = {
	"jimmy": {
		"dialogue_path": "res://dialogue/influencer_test.dialogue",
		"dialogue_resource": "",
		"has_met": false,
		"sprite_path": "res://assets/Sprites/ghosts/pink_ghost.png",
		"sprite_node": Node,
	},
	"ghost2": {
		"dialogue_path": "res://dialogue/test.dialogue",
		"dialogue_resource": "",
		"has_met": false,
		"sprite_path": "res://assets/Sprites/ghosts/star_ghost.png",
		"sprite_node": Node,
	},
	"ghost3": {
		"dialogue_path": "res://dialogue/test.dialogue",
		"dialogue_resource": "",
		"has_met": false,
		"sprite_path": "res://assets/Sprites/ghosts/green_ghost.png",
		"sprite_node": Node,
	},
	"ghost4": {
		"dialogue_path": "res://dialogue/test.dialogue",
		"dialogue_resource": "",
		"has_met": false,
		"sprite_path": "res://assets/Sprites/ghosts/pokey_ghost.png",
		"sprite_node": Node,
	},
	"ghost5": {
		"dialogue_path": "res://dialogue/test.dialogue",
		"dialogue_resource": "",
		"has_met": false,
		"sprite_path": "res://assets/Sprites/ghosts/star_ghost.png",
		"sprite_node": Node,
	},
	"ghost6": {
		"dialogue_path": "res://dialogue/test.dialogue",
		"dialogue_resource": "",
		"has_met": false,
		"sprite_path": "res://assets/Sprites/ghosts/star_ghost.png",
		"sprite_node": Node,
	},
	"ghost7": {
		"dialogue_path": "res://dialogue/test.dialogue",
		"dialogue_resource": "",
		"has_met": false,
		"sprite_path": "res://assets/Sprites/ghosts/star_ghost.png",
		"sprite_node": Node,
	},
	"ghost8": {
		"dialogue_path": "res://dialogue/test.dialogue",
		"dialogue_resource": "",
		"has_met": false,
		"sprite_path": "res://assets/Sprites/ghosts/star_ghost.png",
		"sprite_node": Node,
	},
	"ghost9": {
		"dialogue_path": "res://dialogue/test.dialogue",
		"dialogue_resource": "",
		"has_met": false,
		"sprite_path": "res://assets/Sprites/ghosts/star_ghost.png",
		"sprite_node": Node,
	},
}

@onready var player
@onready var d_resource

var player_interact_item = Node


func _ready():
	load_dialogues()
	load_sprites()


func load_dialogues():
	for ghost in ghosts.keys():
		var dialogue_path = ghosts[ghost]["dialogue_path"]
		ghosts[ghost]["dialogue_resource"] = load(dialogue_path)


func _run_dialogue(ghost: Dictionary):
	player.movement = false
	DialogueManager.show_dialogue_balloon(ghost["dialogue_resource"], "")


func load_sprites(): # TODO: load the sprites into the ghosts dict
	for ghost in ghosts.keys():
		var sprite_path = ghosts[ghost]["sprite_path"]
		ghosts[ghost]["sprite_node"] = get_node(sprite_path)






