tool
extends "res://addons/godot-behavior-tree-plugin/decorator.gd"


# Decorator Node - repeats the same node until we either get a busy response
# This node ignores failed and OK responses, choosing to retick the node instead

func tick(tick: Tick) -> int:
	
	# 0..1 children
	for child in get_children():
		
		while true:
			if child.tick(tick) == ERR_BUSY:
				return ERR_BUSY
	
	return OK
