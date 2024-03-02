extends RayCast3D

@onready var prompt = $Label
@onready var player = get_node("../..")
# Called when the node enters the scene tree for the first time.
func _ready():
	Globals.player = player
	add_exception(owner)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	prompt.text = ""
	player.interact_item = null
	if is_colliding():
		var detected = get_collider()
		if detected.has_method("returnMessage"):
			prompt.text = detected.returnMessage()
			player.interact_item = detected
		elif detected.has_method("getNewForm"):
			prompt.text = "Pick up new form"
		elif detected.has_method("submitForm"):
			prompt.text = "Place form"
