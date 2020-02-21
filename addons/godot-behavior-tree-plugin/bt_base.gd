extends Node


func _execute(tick):
	
	_enter(tick)
	
	if not tick.blackboard.get('isOpen', tick.tree, self):
		_open(tick)
	
	var status = _tick(tick)
	
	if status != ERR_BUSY:
		_close(tick)
	
	_exit(tick)
	
	return status


func _enter(tick):
	
	tick.enter_node(self) #debug call to be filled out in Tick object
	enter(tick)


func _open(tick):
	
	print("opening node")
	tick.open_node(self)
	tick.blackboard.set('isOpen', true, tick.tree, self)
	open(tick)


func _tick(tick):
	
	tick.tick_node(self)
	return tick(tick)


func _close(tick):
	
	print("closing node")
	tick.close_node(self)
	tick.blackboard.set('isOpen', false, tick.tree, self)
	close(tick)


func _exit(tick):
	tick.exit_node(self)
	exit(tick)

#the following functions are to be overridden in extending nodes
func enter(tick):
	pass

func open(tick):
	pass

func tick(tick):
	return OK

func close(tick):
	pass

func exit(tick):
	pass
