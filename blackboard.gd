extends Node

var _baseMemory #stores global info
var _treeMemory #store tree and node info

func _enter_tree():
	_baseMemory = {}
	_treeMemory = {}

func _get_tree_memory(behaviorTree):
	if(!_treeMemory.has(behaviorTree)):
		_treeMemory[behaviorTree]= {
			'nodeMemory':{},
			'openNodes':[]
		}
	return _treeMemory[behaviorTree]

func _get_node_memory(treeMemory, nodeScope):
	var memory = treeMemory['nodeMemory']
	if(!memory.has(nodeScope)):
		memory[nodeScope] = {}
	return memory[nodeScope]

func _get_memory(behaviorTree, nodeScope):
	var memory = _baseMemory
	if(behaviorTree):
		memory = _get_tree_memory(behaviorTree)
		if(nodeScope):
			memory = _get_node_memory(memory, nodeScope)
	return memory

func set(key, value, behaviorTree = null, nodeScope = null):
	var memory = _get_memory(behaviorTree, nodeScope)
	memory[key] = value

func get(key, behaviorTree = null, nodeScope = null):
	var memory = _get_memory(behaviorTree, nodeScope)
	if(memory.has(key)):
		return memory[key]
	return null
