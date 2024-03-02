extends StaticBody3D

signal new_form

var stack_size = 6

func returnMessage():
	return "New Form"

func interact_action():
	new_form.emit()
	if stack_size > 0:
		new_form.emit()
		lower_paper_stack()


func lower_paper_stack():
	pass
