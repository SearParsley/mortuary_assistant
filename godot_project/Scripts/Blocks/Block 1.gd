extends StaticBody3D
func returnMessage():
	return "Block 1"


func interact_action():
	Globals._run_dialogue("jimmy")
