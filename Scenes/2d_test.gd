extends Node2D

@export var objects: Array[PackedScene]

func _unhandled_input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		var new_object = objects.pick_random().instantiate()
	
		new_object.position = event.position
		add_child(new_object)
