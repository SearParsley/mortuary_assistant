extends CharacterBody3D
signal show_form
signal hide_form
const SPEED = 5.0
const JUMP_VELOCITY = 4.5
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")
var look_dir : Vector2
@onready var ray = $Head/RayCast3D
var camera_sens = 0.002
var pauseBool = false
var capMouse = false
var movement = true
var interact_item = null


func _physics_process(delta):
	if not is_on_floor():
		velocity.y -= gravity * delta
	move_and_slide()


func _input(event):
	if event is InputEventMouseMotion:
		if Input.mouse_mode == Input.MOUSE_MODE_CAPTURED:
			rotate_y(-event.relative.x * camera_sens)
			$Head.rotate_x(-event.relative.y * camera_sens)
			$Head.rotation.x = clampf($Head.rotation.x, -deg_to_rad(70),deg_to_rad(70))
	if event is InputEventMouseButton:
		if Input.is_action_just_pressed("mouse_left"):
			print("Mouse 1")
			if interact_item != null: _interact_with_object()
		if Input.is_action_just_pressed("mouse_right"):
			print("mouse 2")
			if Input.get_mouse_mode() == Input.MOUSE_MODE_VISIBLE:
				Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
				hide_form.emit()
			else:
				Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
				show_form.emit()
	if event is InputEventKey:
		if Input.is_action_pressed("ui_cancel"):
			if Input.get_mouse_mode() == Input.MOUSE_MODE_VISIBLE:
				Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
			else:
				Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
				
				# I think the esc. key should just exit the game tbh
				
				#
				#
				# Put code for pause menu (if were doing it)
				#
				#
	if Input.get_mouse_mode() == Input.MOUSE_MODE_CAPTURED:
			_movement()


func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)


func _movement():
	if movement:
		var input_dir = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
		var direction = (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
		if direction:
			velocity.x = direction.x * SPEED
			velocity.z = direction.z * SPEED
		else:
			velocity.x = move_toward(velocity.x, 0, SPEED)
			velocity.z = move_toward(velocity.z, 0, SPEED)


func _interact_with_object():
	print(interact_item.name)
	interact_item.interact_action()

