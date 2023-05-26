extends Node3D

func _input(event):
	if event.is_action_pressed("ui_cancel"):
		get_tree().get_nodes_in_group("player_camera")[0].make_current()
		get_tree().get_nodes_in_group("player")[0].is_active = true
		Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
