extends "res://addons/godot-behavior-tree-plugin/bt_base.gd"

const BehvError = preload("res://addons/godot-behavior-tree-plugin/error.gd")

# Decorator Node - Inverter returns OK on FAILED, FAILED on OK, does not change running or error responses
func tick(tick):
	if get_child_count() > 1:
		return BehvError.new(self, "Inverter has more than one child")

	# 0..1 children
	for c in get_children():
		var result = c._execute(tick)

		if (typeof(result) == TYPE_OBJECT and result extends BehvError) or result == ERR_BUSY:
			return result
		elif result == OK:
			return FAILED
		elif result == FAILED:
			return OK
