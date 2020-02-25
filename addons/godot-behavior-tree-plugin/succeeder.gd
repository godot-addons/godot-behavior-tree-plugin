tool
extends "res://addons/godot-behavior-tree-plugin/decorator.gd"


# Decorator Node - Always returns OK if not running or errored

func tick(tick: Tick) -> int:
	
	# 0..1 children
	for child in get_children():
		var result = child._execute(tick)
		
		if result == ERR_BUSY:
			return result
		
		return OK
