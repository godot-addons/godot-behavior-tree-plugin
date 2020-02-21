tool
extends "res://addons/godot-behavior-tree-plugin/decorator.gd"


# Decorator Node - repeats the same node until we either get an error or a busy response
# This node ignores failed and OK responses, choosing to retick the node instead
func tick(tick):
	
	# 0..1 children
	for c in get_children():
		
		while true:
			if c.tick(tick) == ERR_BUSY:
				return ERR_BUSY
	
	return OK
