extends Node
@onready var label: Label = $"../Game UI/Panel/Label"
@export var hearts : Array[Node]

var points = 0 
var levens = 3

func decrease_health():
	levens -= 1
	print(levens)
	for h in 3:
		if (h < levens):
			hearts[h].show()
		else:
			hearts[h].hide()
	if (levens == 0):
		get_tree().change_scene_to_file("res://Tscenes/Game_Over_Screen.tscn")

func GetPoints():
	points += 1
	print(points)
	label.text = str(points) + " x"
