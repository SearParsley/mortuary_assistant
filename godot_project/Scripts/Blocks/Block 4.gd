extends StaticBody3D
func returnMessage():
	return "Block 4"


func interact_action():
	Globals._run_dialogue("jack")
