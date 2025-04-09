extends Sprite2D

func _on_body_entered(body: Node2D):\
	if (body.name == "CharacterBody2D"):
		get_tree().change_scene_to_file("res://Scenes/Menu_Screen.tscn")
