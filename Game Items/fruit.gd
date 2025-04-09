extends Area2D
@onready var gamemanager: Node = %Gamemanager

func Collision_Item(body: Node2D):
	if (body.name == "CharacterBody2D"):
		queue_free()
		gamemanager.GetPoints()
