extends Camera2D

var player: Node2D  # Store reference to player

func _ready():
	player = get_parent().get_node("Player")  # Find player in the scene

func _process(_delta: float):
	if player && player.position != position:  # Make sure the player exists
		position = player.position  # Follow the player's position
