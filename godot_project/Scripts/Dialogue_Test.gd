extends Node3D

func _ready():
	var resource = Globals.ghosts["jimmy"]["dialogue_resource"]
	DialogueManager.show_dialogue_balloon(resource, "")
