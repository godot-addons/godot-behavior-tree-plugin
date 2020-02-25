tool
extends "res://addons/godot-behavior-tree-plugin/bt_base.gd"


func _tick(tick: Tick) -> int:
	
	if not get_child_count() == 1:
		push_error(str(name,  " is a decorator and should have exactly one child."))
	return ._tick(tick)


func _notification(notification: int) -> void:
	
	if notification == NOTIFICATION_PARENTED or notification == NOTIFICATION_UNPARENTED:
		update_configuration_warning()


func _get_configuration_warning() -> String:
	 
	if not get_child_count() == 1:
		return "Decorators should have exactly one child"
	return ""
