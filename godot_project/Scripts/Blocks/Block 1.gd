extends StaticBody3D
func returnMessage():
	return "Block 1"


func interact_action():
	# Globals.player.freeze()
	var resource = Globals.ghosts["jimmy"]["dialogue_resource"]
	DialogueManager.show_dialogue_balloon(resource, "")
