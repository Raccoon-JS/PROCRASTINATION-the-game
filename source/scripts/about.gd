extends Node

export (String, FILE, "") var previous

func _ready():
	pass # Replace with function body.

func _on_previous_pressed():
	if get_tree().change_scene(previous) != 0:
		get_tree().quit()
	pass # Replace with function body.
