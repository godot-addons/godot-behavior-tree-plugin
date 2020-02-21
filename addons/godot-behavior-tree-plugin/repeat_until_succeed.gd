tool
extends "res://addons/godot-behavior-tree-plugin/decorator.gd"


# Decorator Node - Repeats the same node until we get an OK response
#   this node ignores running and failed responses, choosing to retick the node instead
func tick(tick):
	
	# 0..1 children
	for c in get_children():
		
		while true:
			if _execute(tick) == OK:
				return OK
	
	return OK
