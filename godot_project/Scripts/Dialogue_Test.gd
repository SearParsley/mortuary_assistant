extends Node3D


func _ready():
	var resource = load("res://dialogue/test.dialogue")
	DialogueManager.show_dialogue_balloon(resource)
