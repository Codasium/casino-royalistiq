extends RigidBody2D
@onready var gamemanager: Node = %Gamemanager
@onready var ray_cast_right: RayCast2D = $RayCastRight
@onready var ray_cast_left: RayCast2D = $RayCastLeft
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
 	

const SPEED = 400
var direction = 1

func _on_area_2d_body_entered(body: Node2D):
	if (body.name == "CharacterBody2D"):
		var y_delta = position.y - body.position.y
		var x_delta = body.position.x - position.x
		if (y_delta > 390):
			queue_free()
			body.Bounce()
		else:
			gamemanager.decrease_health()
			if (x_delta > 0):
				body.damaged(1500)
			else:
				body.damaged(-1500)
				
func _process(delta):
	if ray_cast_right.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = false
	if ray_cast_left.is_colliding():
		direction = 1
		animated_sprite_2d.flip_h = true
		
	position.x += direction * SPEED * delta
