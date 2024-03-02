extends StaticBody3D

signal new_form

func returnMessage():
	return "New Form"

func interact_action():
	new_form.emit()
