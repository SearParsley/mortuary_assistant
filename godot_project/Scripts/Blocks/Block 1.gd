extends StaticBody3D
func returnMessage():
	return "Block 1"


func interact_action():
	var resource = Globals.ghosts["jimmy"]["dialogue_resource"]
	Globals.run_dialogue(resource)
