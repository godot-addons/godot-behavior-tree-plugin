extends "res://addons/godot-behavior-tree-plugin/bt_base.gd"

const BehvError = preload("res://addons/godot-behavior-tree-plugin/error.gd")

# Decorator Node - repeats the same node until we either get an error or a busy response
#   this node ignores failed and OK responses, choosing to retick the node instead
func tick(tick):
	if get_child_count() > 1:
		return BehvError.new(self, "ERROR BehaviorRepeater has more than one child")

	# 0..1 children
	for c in get_children():
		while true:
			var result = c.tick(tick)

			if (typeof(result) == TYPE_OBJECT and result extends BehvError) or result == ERR_BUSY:
				return result

	return OK
