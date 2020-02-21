#Created by the tree and passed to nodes, this lets nodes know which tree they belong to, and gives them a reference to the blackboard being used for this tick.
#It also holds the list of currently open nodes
#Can be extended to do nodeCount and send debug info

var tree
var open_nodes
#var node_count
#var debug
var actor
var blackboard


func _init():
	
	open_nodes = []
	blackboard = []


func open_node(node):
	pass


func enter_node(node):
	open_nodes.push_back(node)


func tick_node(node):
	pass


func close_node(node):
	if open_nodes.has(node):
		open_nodes.remove(open_nodes.find(node))


func exit_node(node):
	pass
