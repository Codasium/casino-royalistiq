extends Area2D
@onready var gamemanager: Node = %Gamemanager

func _on_body_entered(body: Node2D):
	if (body.name == "CharacterBody2D"):
		body.position = Vector2(100, 100)
		gamemanager.decrease_health()
