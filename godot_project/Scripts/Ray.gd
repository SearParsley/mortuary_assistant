extends RayCast3D

@onready var prompt = $Label
@onready var player = get_node("../..")
# Called when the node enters the scene tree for the first time.
func _ready():
	add_exception(owner)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	prompt.text = ""
	if is_colliding():
		var detected = get_collider()
		if detected is Interactable:
			prompt.text = detected.name
			player.interact_item = detected
		else:
			player.interact_item = null
