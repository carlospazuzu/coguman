extends Node2D

signal cursor_has_just_moved

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_cursor_cursor_has_just_moved():
	$cursor_sfx.play()
