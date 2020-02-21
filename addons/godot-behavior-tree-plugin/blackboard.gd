extends Node

var _base_memory #stores global info
var _tree_memory #store tree and node info


func _enter_tree():
	_base_memory = {}
	_tree_memory = {}


func _get_tree_memory(behavior_tree):
	
	if not _tree_memory.has(behavior_tree):
		_tree_memory[behavior_tree]= {
			'nodeMemory':{},
			'openNodes':[]
		}
	
	return _tree_memory[behavior_tree]


func _get_node_memory(tree_memory, node_scope):
	
	var memory = tree_memory['nodeMemory']
	
	if not memory.has(node_scope):
		memory[node_scope] = {}
	return memory[node_scope]


func _get_memory(behavior_tree, node_scope):
	
	var memory = _base_memory
	
	if behavior_tree:
		memory = _get_tree_memory(behavior_tree)
		
		if node_scope:
			memory = _get_node_memory(memory, node_scope)
	
	return memory


func set(key, value, behavior_tree = null, node_scope = null):
	
	var memory = _get_memory(behavior_tree, node_scope)
	memory[key] = value


func get(key, behavior_tree = null, node_scope = null):
	
	var memory = _get_memory(behavior_tree, node_scope)
	
	if memory.has(key):
		return memory[key]
	
	return null
