extends "res://addons/godot-behavior-tree-plugin/bt_base.gd"

# Composite Node - ticks children until one returns OK or ERR_BUSY
# 	Fails ONLY if all children fail (return FAILED)

func tick(tick: Tick) -> int:
	
	var result := OK #if we have no children, assume success
	
	for child in get_children():
		result = child._execute(tick)
		
		if not result == FAILED:
			break
	
	return result
