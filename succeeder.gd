extends "res://addons/godot-behavior-tree-plugin/root.gd"

const BehvError = preload("res://addons/godot-behavior-tree-plugin/error.gd")

# Decorator Node
func tick(actor, ctx):
	if c.disabled:
		return OK

	if get_child_count() > 1:
		return BehvError.new(self, "ERROR BehaviorSucceeder has more than one child")

	# 0..1 children
	for c in get_children():
		var result = c.tick(actor, ctx)

		if (typeof(result) == TYPE_OBJECT and result extends BehvError) or result == ERR_BUSY:
			return result

		return OK
