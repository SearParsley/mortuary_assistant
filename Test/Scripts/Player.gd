extends CharacterBody3D
const SPEED = 5.0
const JUMP_VELOCITY = 4.5
# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")
var look_dir : Vector2
@onready var ray = $Head/RayCast3D
var camera_sens = 0.002
var pauseBool = false
var capMouse = false
func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y -= gravity * delta
	# Handle jump.
	
	
	move_and_slide()
func _input(event):
	if event is InputEventMouseMotion:
		if Input.mouse_mode == Input.MOUSE_MODE_CAPTURED:
			rotate_y(-event.relative.x * camera_sens)
			$Head.rotate_x(-event.relative.y * camera_sens)
			$Head.rotation.x = clampf($Head.rotation.x, -deg_to_rad(70),deg_to_rad(70))

			
	if event is InputEventKey:
		if Input.is_action_pressed("pause"):
			if Input.get_mouse_mode() == Input.MOUSE_MODE_VISIBLE:
				Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
			else:
				Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
				
		if Input.get_mouse_mode() == Input.MOUSE_MODE_CAPTURED:
			if Input.is_action_just_pressed("ui_accept") and is_on_floor():
				velocity.y = JUMP_VELOCITY
		# Get the input direction and handle the movement/deceleration.
		# As good practice, you should replace UI actions with custom gameplay actions.
			var input_dir = Input.get_vector("move_left", "move_right", "move_forward", "move_backward")
			var direction = (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
			if direction:
				velocity.x = direction.x * SPEED
				velocity.z = direction.z * SPEED
			else:
				velocity.x = move_toward(velocity.x, 0, SPEED)
				velocity.z = move_toward(velocity.z, 0, SPEED)
				
				
				
				
func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
