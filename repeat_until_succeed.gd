extends "res://addons/godot-behavior-tree-plugin/root.gd"

const BehvError = preload("res://addons/godot-behavior-tree-plugin/error.gd")

# Decorator Node
func tick(actor, ctx):
	if get_child_count() > 1:
		return BehvError.new(self, "ERROR BehaviorRepeatUntilSucceed has more than one child")

	# 0..1 children
	for c in get_children():
		if c.disabled:
			return OK

		while 1<2:
			var result = c.tick(actor, ctx)

			if typeof(result) == TYPE_OBJECT and result extends BehvError:
				return result

			if result == OK:
				return OK

	return OK
