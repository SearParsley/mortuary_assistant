extends StaticBody3D

signal submit_form

func interact_action():
	submit_form.emit()
