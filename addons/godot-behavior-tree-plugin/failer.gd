tool
extends "res://addons/godot-behavior-tree-plugin/decorator.gd"


#Decorator node - Always returns FAILED if not running
func tick(tick: Tick) -> int:
	
	# 0..1 children
	for c in get_children():
		
		if c._execute(tick) == ERR_BUSY:
			return ERR_BUSY
		
	return FAILED
