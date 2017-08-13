extends "res://addons/godot-behavior-tree-plugin/bt_base.gd"

const BehvError = preload("res://addons/godot-behavior-tree-plugin/error.gd")

export(int) var max_calls = 0

var total_calls = 0

# Decorator Node
func tick(tick):
	if get_child_count() > 1:
		return BehvError.new(self, "ERROR BehaviorLimiter has more than one child")

	if total_calls >= max_calls:
		return FAILED

	# 0..1 children
	for c in get_children():
		total_calls+=1

		return c._execute(tick)

	return FAILED
