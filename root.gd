extends Node

const BehvError = preload("res://addons/godot-behavior-tree-plugin/error.gd")

export(bool) var disabled

# Root Node
func tick(actor, ctx):
	if disabled:
		return OK

	if get_child_count() > 1:
		var msg = str("ERROR BehaviorTree node at ", get_name(), " has more than 1 child. Should only have one. Returning.")
		return BehvError.new(self, msg)

	# 0..1 children
	for c in get_children():
		return c.tick(actor, ctx)
