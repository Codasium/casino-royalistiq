extends CharacterBody2D

var speed
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var direction = 1
@onready var character_body_2d: CharacterBody2D = %CharacterBody2D
@onready var gamemanager: Node = %Gamemanager


func _physics_process(delta: float) -> void:
	move_and_slide()
	velocity.y += delta * gravity
	velocity.x = 0

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		body.WordtGroot()
		queue_free()
	else:
		direction *= -1
