extends RigidBody2D
@onready var character_body_2d: CharacterBody2D = %CharacterBody2D
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

const JUMP_VELOCITY = -2000.0

func spring():
	character_body_2d.velocity.y = JUMP_VELOCITY

func _on_area_2d_body_entered(body: Node2D) -> void:
	if (body.name == "CharacterBody2D"):
		var y_delta = position.y - body.position.y
		var x_delta = body.position.x - position.x
		for i in range(1):
			animated_sprite_2d.play("default") 
		spring()
		
	
