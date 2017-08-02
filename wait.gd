extends "res://addons/godot-behavior-tree-plugin/root.gd"

export(float) var wait_time = 0.0

var last_time = 0.0

# Decorator Node
func tick(tick):
	return OK
