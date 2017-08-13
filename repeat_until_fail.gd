extends "res://addons/godot-behavior-tree-plugin/bt_base.gd"

const BehvError = preload("res://addons/godot-behavior-tree-plugin/error.gd")

# Decorator Node - Repeats the same node until we either get an error or a FAILED response
#   this node ignores running and success responses, choosing to retick the node instead
func tick(tick):
	if get_child_count() > 1:
		return BehvError.new(self, "ERROR BehaviorRepeatUntilFail has more than one child")

	# 0..1 children
	for c in get_children():
		while true:
			var result = c._execute(tick)

			if typeof(result) == TYPE_OBJECT and result extends BehvError:
				return result

			if result == FAILED:
				return OK

	return OK
