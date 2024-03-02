extends StaticBody3D
func returnMessage():
	return "Block 3"


func interact_action():
	Globals._run_dialogue("beverly")
