extends Node

var punten = 0

func spawn_kiwi(pos):
	var KiwiScene = load("res://Tscenes/kiwi.tscn")
	var Kiwi = KiwiScene.instantiate()
	Kiwi.global_position = pos
	get_tree().root.add_child(Kiwi)
