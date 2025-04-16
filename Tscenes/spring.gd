extends RigidBody2D
@onready var character_body_2d: CharacterBody2D = %CharacterBody2D



func _on_area_2d_body_entered(body: Node2D) -> void:
	if (body.name == "CharacterBody2D"):
		var y_delta = position.y - body.position.y
		var x_delta = body.position.x - position.x
		character_body_2d.bounce()
	
