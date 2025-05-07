extends Area2D

enum State { UNBUMPED, BUMPED }
var state: int = State.UNBUMPED
var original_position: Vector2

func _ready():
	original_position = position

func _on_body_entered(body: Node2D) -> void:
	if (body.name == "CharacterBody2D") and state == State.UNBUMPED:
		bump_block()

func bump_block():
	state = State.BUMPED
	$Sprite2D.frame = 1
	bump_upwards()
	Global.spawn_kiwi(self.global_position + Vector2(0, -90))
	var timer = get_tree().create_timer(0.2)
	await timer.timeout
	return_to_original_position()

func bump_upwards():
	position.y -= 10

func return_to_original_position():
	position = original_position
