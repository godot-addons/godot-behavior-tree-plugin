extends Node

#Created by the tree and passed to nodes, this lets nodes know which tree they belong to, and gives them a reference to the blackboard being used for this tick.
#It also holds the list of currently open nodes
#Can be extended to do nodeCount and send debug info

var tree
var openNodes
#var nodeCount
#var debug
var actor
var blackboard

func _init():
	tree = null
	openNodes = []
	actor = null
	blackboard = []

func openNode(node):
	pass

func enterNode(node):
	openNodes.push_back(node)

func tickNode(node):
	pass

func closeNode(node):
	if(openNodes.has(node)):
		openNodes.remove(openNodes.find(node))

func exitNode(node):
	pass
