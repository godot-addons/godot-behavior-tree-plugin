extends "res://addons/godot-behavior-tree-plugin/bt_base.gd"

# Compsite Node - ticks children until one returns OK, ERR_BUSY or ERROR
#   Fails ONLY if all children fail (return FAILED)
func tick(tick):
	var result = OK #if we have no children, assume success

	for idx in range(0, get_child_count()):
		var child = get_child(idx)
		result = child._execute(tick)

		if result != FAILED:
			break

	return result
