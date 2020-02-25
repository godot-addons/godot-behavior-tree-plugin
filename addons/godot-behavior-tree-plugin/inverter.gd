tool
extends "res://addons/godot-behavior-tree-plugin/decorator.gd"


# Decorator Node - Inverter returns OK on FAILED, FAILED on OK, does not change running responses
func tick(tick: Tick) -> int:
	
	# 0..1 children
	for c in get_children():
		var result: int = c._execute(tick)
		
		if result == ERR_BUSY:
			return result
		
		elif result == OK:
			return FAILED
		
		elif result == FAILED:
			return OK
		
		else:
			return result
