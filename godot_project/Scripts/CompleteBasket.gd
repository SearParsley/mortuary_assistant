extends StaticBody3D

signal submit_form

var stack_size = 0

func returnMessage():
	return "Place Form"

func interact_action():
	submit_form.emit()
	if stack_size < 6:
		submit_form.emit()
		raise_paper_stack()


func raise_paper_stack():
	pass
