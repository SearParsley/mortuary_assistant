extends Node3D

func _ready():
	var resource = load("res://dialogue/influencer_test.dialogue")
	DialogueManager.show_dialogue_balloon(resource, "")
