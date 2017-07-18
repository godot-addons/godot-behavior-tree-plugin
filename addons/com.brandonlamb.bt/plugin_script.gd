tool

extends EditorPlugin

func _enter_tree():
  add_custom_type("BehaviorTree", "Node", preload("res://addons/com.brandonlamb.bt/root.gd"), preload("res://addons/com.brandonlamb.bt/root_icon.png"))
  add_custom_type("BehaviorAction", "BehaviorTree", preload("res://addons/com.brandonlamb.bt/action.gd"), preload("res://addons/com.brandonlamb.bt/action_icon.png"))
  add_custom_type("BehaviorCondition", "BehaviorTree", preload("res://addons/com.brandonlamb.bt/condition.gd"), preload("res://addons/com.brandonlamb.bt/condition_icon.png"))
  add_custom_type("BehaviorError", "BehaviorTree", preload("res://addons/com.brandonlamb.bt/error.gd"), preload("res://addons/com.brandonlamb.bt/error_icon.png"))
  add_custom_type("BehaviorInverter", "BehaviorTree", preload("res://addons/com.brandonlamb.bt/inverter.gd"), preload("res://addons/com.brandonlamb.bt/inverter_icon.png"))
  add_custom_type("BehaviorSelector", "BehaviorTree", preload("res://addons/com.brandonlamb.bt/selector.gd"), preload("res://addons/com.brandonlamb.bt/selector_icon.png"))
  add_custom_type("BehaviorSequence", "BehaviorTree", preload("res://addons/com.brandonlamb.bt/sequence.gd"), preload("res://addons/com.brandonlamb.bt/sequence_icon.png"))
  add_custom_type("BehaviorSucceeder", "BehaviorTree", preload("res://addons/com.brandonlamb.bt/succeeder.gd"), preload("res://addons/com.brandonlamb.bt/succeeder_icon.png"))

func _exit_tree():
  remove_custom_type("BehaviorTree")
  remove_custom_type("BehvAction")
  remove_custom_type("BehvCondition")
  remove_custom_type("BehvError")
  remove_custom_type("BehvInverter")
  remove_custom_type("BehvSelector")
  remove_custom_type("BehvSequence")
  remove_custom_type("BehvSucceeder")
