extends CharacterBody2D

@export var speed: float = 500  # Max speed
@export var acceleration: float = 2000  # How fast force is applied
@export var friction: float = 2000  # Slows down movement gradually
@export var gravity: float = 2000
@export var jump_force: float = 800  

func _physics_process(delta):
	
	if Input.is_action_just_pressed("switch"):
		get_tree().change_scene_to_file("res://plinko.tscn")
	# Apply gravity
	if not is_on_floor():
		velocity.y += gravity * delta  

	# Get input direction
	var direction = Input.get_axis("left", "right")

	if direction != 0:
		# Apply acceleration gradually
		velocity.x += direction * acceleration * delta
		velocity.x = clamp(velocity.x, -speed, speed)  # Limit max speed
	else:
		# Apply friction when no input (slow down over time)
		velocity.x = move_toward(velocity.x, 0, friction * delta)

	# Jumping
	if is_on_floor() and Input.is_action_just_pressed("jump"):
		velocity.y = -jump_force  # Jump upwards
	if Input.is_action_just_pressed("respawn"):
		position = Vector2.ZERO
	move_and_slide()
