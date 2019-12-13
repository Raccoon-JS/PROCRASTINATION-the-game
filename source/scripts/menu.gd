extends Node

var state

enum STATUS {TEXT,CHOICE}

func _ready():
	pass # Replace with function body.

func _input(event):
	if event.is_action_pressed("mouse_left"):
		print("hello world")
	pass