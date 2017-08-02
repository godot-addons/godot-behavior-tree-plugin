extends "res://addons/godot-behavior-tree-plugin/bt_base.gd"

const BehvError = preload("res://addons/godot-behavior-tree-plugin/error.gd")

# Decorator Node
func tick(tick):
	if get_child_count() > 1:
		return BehvError.new(self, "ERROR BehaviorFailer has more than one child")

	# 0..1 children
	for c in get_children():
		if c.disabled:
			return FAILED

		var result = c.tick(tick)

		if (typeof(result) == TYPE_OBJECT and result extends BehvError) or result == ERR_BUSY:
			return result

		return FAILED
