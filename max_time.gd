extends "res://addons/godot-behavior-tree-plugin/root.gd"

const BehvError = preload("res://addons/godot-behavior-tree-plugin/error.gd")

export(int) var max_calls = 0

var total_calls = 0

# Decorator Node
func tick(tick):
	if get_child_count() > 1:
		return BehvError.new(self, "ERROR BehaviorMaxTime has more than one child")

	if total_calls >= max_calls:
		return FAILED

	# 0..1 children
	for c in get_children():
		total_calls++

		if c.disabled:
			return FAILED

		return c.tick(tick)

	return FAILED
