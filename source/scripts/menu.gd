extends Node

export (String, FILE, "") var start_game
export (String, FILE, "") var about

enum STATUS {TEXT,CHOICE}

var state = STATUS.TEXT
var pages = 0

onready var words = $words
onready var face = $expression
onready var buttons = $buttons

func _ready():
	buttons.visible = false
	cur_pages(pages)
	state = STATUS.TEXT
	pass 


func _input(event):
	if event.is_action_pressed("mouse_left"):
		if state == STATUS.TEXT:
			pages += 1
			cur_pages(pages)
	pass

func cur_pages(p):
	if p == 1:
		words.get_node("upper_part").text = "Godot Wild Jam #16 is happening."
		face.texture = load("res://images/face-smile.png")
	elif p == 2:
		words.get_node("upper_part").text = "But you have only less than 72 hours to work on this game."
		face.texture = load("res://images/face-surprised.png")
	elif p == 3:
		state = STATUS.CHOICE
		buttons.visible = true
		words.get_node("upper_part").text = "What do you do?"
		words.get_node("command").text = "Select your decision."
		face.texture = load("res://images/face-worried.png")
	pass

func _on_start_pressed():
	if get_tree().change_scene(start_game) != 0:
		get_tree().quit()
	pass # Replace with function body.

func _on_about_pressed():
	if get_tree().change_scene(about) != 0:
		get_tree().quit()
	pass # Replace with function body.

func _on_quit_pressed():
	get_tree().quit()
	pass # Replace with function body.
