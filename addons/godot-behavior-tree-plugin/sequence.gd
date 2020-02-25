extends "res://addons/godot-behavior-tree-plugin/bt_base.gd"

# Composite Node - ticks children until one returns FAILED or ERR_BUSY
# 	Succeeds ONLY if all children succeed (return OK)

func tick(tick: Tick) -> int:
	
	var result := OK #if we have no children, assume success
	
	for child in get_children():
		result = child._execute(tick)
		
		if not result == OK:
			break
	
	return result
