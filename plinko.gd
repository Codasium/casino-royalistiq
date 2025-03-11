extends Node2D

var Ball: RigidBody2D

# Called when the node enters the scene tree for the first time.
func _ready():
	Ball = get_node("PhysicsBall")
	Ball.visible = false
	Ball.set_process(false)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("spawn ball"):
		var clone = Ball.duplicate()
		clone.visible = true
		clone.set_process(true)
		clone.position = Vector2(randf_range(-30, 30), randf_range(-30, 30))
		add_child(clone)
