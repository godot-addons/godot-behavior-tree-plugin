extends Node

const BehvError = preload("res://addons/godot-behavior-tree-plugin/error.gd")
const Tick = preload("res://addons/godot-behavior-tree-plugin/tick.gd")


func _ready():
	
	if get_child_count() > 1:
		var msg = str("ERROR BehaviorTree node at ", get_name(), " has more than 1 child. Should only have one. Returning.")
		return BehvError.new(self, msg)


func tick(actor, blackboard):
	
	var tick = Tick.new()
	tick.tree = self
	tick.actor = actor
	tick.blackboard = blackboard

	var result = FAILED
	
	for c in get_children():
		result =  c._execute(tick)
	
	# Close nodes from last tick, if needed
	var last_open_nodes = tick.blackboard.get('openNodes', self)
	var current_open_nodes = tick.open_nodes

	# If node isn't currently open, but was open during last tick, close it
	for node in last_open_nodes:
		if (not current_open_nodes.has(node) 
			and tick.blackboard.get('isOpen', tick.tree, node)):
				node._close(tick)

	# Populate the blackboard
	blackboard.set('openNodes', current_open_nodes, self)
	return result
