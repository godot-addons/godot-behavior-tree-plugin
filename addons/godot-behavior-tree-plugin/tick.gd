#Created by the tree and passed to nodes, this lets nodes know which tree they belong to, and gives them a reference to the blackboard being used for this tick.
#It also holds the list of currently open nodes
#Can be extended to do nodeCount and send debug info

const Blackboard = preload("res://addons/godot-behavior-tree-plugin/blackboard.gd")

var tree
var open_nodes := []
#var node_count
var debug: bool
var actor
var blackboard: Blackboard


func open_node(node) -> void:
	
	if debug:
		print("Opening node '%s'" % node.name)


func enter_node(node) -> void:
	
	open_nodes.push_back(node)
	
	if debug:
		print("Entering node '%s'" % node.name)


func tick_node(node) -> void:
	
	if debug:
		print("Ticking node '%s'" % node.name)


func close_node(node) -> void:
	
	if open_nodes.has(node):
		open_nodes.remove(open_nodes.find(node))
		
		if debug:
			print("Closing node '%s'" % node.name)


func exit_node(node) -> void:
	
	if debug:
		print("Exiting node '%s'" % node.name)
