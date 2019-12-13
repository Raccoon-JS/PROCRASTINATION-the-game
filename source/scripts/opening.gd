extends Node

export (String, FILE, "") var next_scene

func _ready():
	$ani_player.play("intro")
	pass # Replace with function body.

func _on_ani_player_finished(anim_name):
	if anim_name == "intro":
		if get_tree().change_scene(next_scene) != 0:
			get_tree().quit()
	pass # Replace with function body.
