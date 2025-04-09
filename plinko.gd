extends Node2D

var Ball: RigidBody2D
var timer: float

# Called when the node enters the scene tree for the first time.
func _ready():
	Ball = get_node("PhysicsBall")
	Ball.visible = false
	Ball.set_process(false)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float):
	timer += delta
	if Input.is_action_just_pressed("spawn ball") && timer >= 1:
		var clone = Ball.duplicate()
		clone.visible = true
		clone.set_process(true)
		clone.position = Vector2(randf_range(-40, 40), -100)
		add_child(clone)
		timer = 0
