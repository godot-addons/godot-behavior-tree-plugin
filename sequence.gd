extends "res://addons/godot-behavior-tree-plugin/root.gd"

const BehvError = preload("res://addons/godot-behavior-tree-plugin/error.gd")

var last_result = FAILED
var last_child_index = 0

# Composite Node
func tick(actor, ctx):
	var early_bail = false

	for idx in range(last_child_index, get_child_count()):
		var child = get_child(idx)

		last_child_index = idx

		if child.disabled:
			last_result = OK
		else:
			last_result = child.tick(actor, ctx)

		if typeof(last_result) == TYPE_OBJECT and last_result extends BehvError:
			break

		if last_result == FAILED:
			break

		if last_result == ERR_BUSY:
			early_bail = true
			break

	if not early_bail or last_child_index == get_child_count() - 1:
		last_child_index = 0

	return last_result
