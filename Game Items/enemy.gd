extends RigidBody2D
@onready var gamemanager: Node = %Gamemanager
@onready var character_body_2d: CharacterBody2D = %CharacterBody2D

func _on_area_2d_body_entered(body: Node2D):
	if (body.name == "CharacterBody2D"):
		var y_delta = position.y - body.position.y
		var x_delta = body.position.x - position.x
		if (y_delta > 370):
			queue_free()
			gamemanager.GetPoints()
			body.Bounce()
		else:
			gamemanager.decrease_health()
			if (x_delta > 0):
				body.NormaleJongen()
				body.damaged(1500)
			else:
				body.NormaleJongen()
				body.damaged(-1500)
