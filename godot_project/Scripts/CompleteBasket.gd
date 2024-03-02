extends StaticBody3D

signal submit_form

func returnMessage():
	return "Place Form"

func interact_action():
	submit_form.emit()
