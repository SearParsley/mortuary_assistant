extends StaticBody3D
func returnMessage():
	return "Block 1"


func interact_action():
	var ghost = Globals.ghosts["jimmy"]
	Globals.run_dialogue(ghost)
