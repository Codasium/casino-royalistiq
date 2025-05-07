extends Node
@onready var pause_panel: Panel = %PausePanel

func _ready():
	pass

func _process(delta):
	var esc_pressed = Input.is_action_just_pressed("pause")
	if (esc_pressed == true):
		get_tree().paused = true
		pause_panel.show()


func _on_resume_pressed():
	get_tree().paused = false
	pause_panel.hide()

#func _on_main_menu_pressed():
	#get_tree().paused = false
	#get_tree().change_scene_to_file("res://Tscenes/Menu_Screen.tscn")
func _on_main_menu_pressed():
	get_tree().paused = false
	if has_node("path/to/kiwi"):
		var kiwi = get_node("path/to/kiwi")
		kiwi.queue_free()
	get_tree().change_scene_to_file("res://Tscenes/Menu_Screen.tscn")



func _on_quit_pressed(): 
	get_tree().paused = false
	get_tree().quit()
