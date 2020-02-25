extends "res://addons/godot-behavior-tree-plugin/bt_base.gd"

# Compsite Node - ticks children until one returns FAILED, ERR_BUSY or ERROR
#   succeeds ONLY if all children succeed (return OK)
#   Unlike ordinary sequence, this one picks up where it left off if it wasn't closed last time

func open(tick: Tick) -> void:
	
	tick.blackboard.set("runningChild", 0, tick.tree, self)


func tick(tick: Tick) -> int:
	
	var result := OK #if we have no children, assume success
	
	var childIdx = tick.blackboard.get("runningChild", tick.tree, self)
	
	for idx in range(childIdx, get_child_count()):
		var child = get_child(idx)
		result = child._execute(tick)
		
		if not result == OK:
			if result == ERR_BUSY:
				tick.blackboard.set("runningChild", idx, tick.tree, self)
			break
	
	return result
