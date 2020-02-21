tool
extends "res://addons/godot-behavior-tree-plugin/decorator.gd"


# Decorator Node - Always returns OK if not running or errored
func tick(tick):
	
	# 0..1 children
	for c in get_children():
		var result = c._execute(tick)
		
		if result == ERR_BUSY:
			return result
		
		return OK
