tool
extends "res://addons/godot-behavior-tree-plugin/decorator.gd"


# Decorator Node - Repeats the same node until we either get a FAILED response
# this node ignores running and success responses, choosing to retick the node instead
func tick(tick: Tick) -> int:
	
	# 0..1 children
	for c in get_children():
		
		while true:
			if c._execute(tick) == FAILED:
				return OK
	
	return OK
