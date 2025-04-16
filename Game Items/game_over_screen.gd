extends Node



func _on_button_pressed():
	get_tree().change_scene_to_file("res://Tscenes/Menu_Screen.tscn")

func _on_button_2_pressed():
	get_tree().quit()


func _on_button_3_pressed():
	var current_scene = get_tree().current_scene
	get_tree().change_scene_to_file(current_scene.scene_file_path)
