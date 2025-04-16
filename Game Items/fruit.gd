extends Area2D
@onready var gamemanager: Node = %Gamemanager
@onready var character_body_2d: CharacterBody2D = %CharacterBody2D



func Collision_Item(body: Node2D):
	if (body.name == "CharacterBody2D"):
		queue_free()
		character_body_2d.spawn_particle()
		gamemanager.GetPoints()
