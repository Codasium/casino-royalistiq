extends RigidBody2D
@onready var gamemanager: Node = %Gamemanager

func _on_area_2d_body_entered(body: Node2D):
	if (body.name == "CharacterBody2D"):
		var y_delta = position.y - body.position.y
		var x_delta = body.position.x - position.x
		if (y_delta > 370):
			queue_free()
			body.Bounce()
		else:
			gamemanager.decrease_health()
			if (x_delta > 0):
				body.damaged(1500)
			else:
				body.damaged(-1500)
