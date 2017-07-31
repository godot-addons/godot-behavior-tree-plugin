extends Node

var _baseMemory #stores global info
var _treeMemory #store tree and node info

func _enter_tree():
  _baseMemory = {}
  _treeMemory = {}

func _get_tree_memory(behaviorTree):
  if(!_treeMemory(behaviorTree)):
    _treeMemory[behaviorTree]= {
      'nodeMemory':{},
      'openNodes':[]
    }
  return _treeMemory[behaviorTree]

func _get_node_memory(behaviorTree, nodeScope):
  var memory = _treeMemory['nodeMemory']
  if(!memory[nodeScope]):
    memory[nodeScope] = {}
  return memory[nodeScope]

func _get_memory(behaviorTree, nodeScope):
  var memory = _baseMemory
  if(behaviorTree):
    memory = self._get_tree_memory(behaviorTree)
    if(nodeScope):
      memory = self._get_node_memory(behaviorTree, nodeScope)
  return memory

func set(key, value, behaviorTree, nodeScope):
  var memory = self._get_memory(behaviorTree, nodeScope)
  memory[key] = value

func get(key, behaviorTree, nodeScope):
  var memory = self._get_memory(behaviorTree, nodeScope)
  return memory[key]
