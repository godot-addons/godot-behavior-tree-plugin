tool

extends EditorPlugin

func _enter_tree():
	add_custom_type(
		"BehaviorAction",
		"Node",
		preload("res://addons/godot-behavior-tree-plugin/action.gd"),
		preload("res://addons/godot-behavior-tree-plugin/action_icon.png")
	)

	add_custom_type(
		"BehaviorBlackboard",
		"Node",
		preload("res://addons/godot-behavior-tree-plugin/blackboard.gd"),
		preload("res://addons/godot-behavior-tree-plugin/blackboard_icon.png")
	)

	add_custom_type(
		"BehaviorCondition",
		"Node",
		preload("res://addons/godot-behavior-tree-plugin/condition.gd"),
		preload("res://addons/godot-behavior-tree-plugin/condition_icon.png")
	)

	add_custom_type(
		"BehaviorFailer",
		"Node",
		preload("res://addons/godot-behavior-tree-plugin/failer.gd"),
		preload("res://addons/godot-behavior-tree-plugin/error_icon.png")
	)

	add_custom_type(
		"BehaviorInverter",
		"Node",
		preload("res://addons/godot-behavior-tree-plugin/inverter.gd"),
		preload("res://addons/godot-behavior-tree-plugin/inverter_icon.png")
	)

	add_custom_type(
		"BehaviorLimiter",
		"Node",
		preload("res://addons/godot-behavior-tree-plugin/limiter.gd"),
		preload("res://addons/godot-behavior-tree-plugin/limiter_icon.png")
	)

	add_custom_type(
		"BehaviorMaxLimiter",
		"Node",
		preload("res://addons/godot-behavior-tree-plugin/limiter.gd"),
		preload("res://addons/godot-behavior-tree-plugin/limiter_icon.png")
	)

	add_custom_type(
		"BehaviorRepeater",
		"Node",
		preload("res://addons/godot-behavior-tree-plugin/repeater.gd"),
		preload("res://addons/godot-behavior-tree-plugin/repeat_icon.png")
	)

	add_custom_type(
		"BehaviorRepeatUntilFail",
		"Node",
		preload("res://addons/godot-behavior-tree-plugin/repeat_until_fail.gd"),
		preload("res://addons/godot-behavior-tree-plugin/repeat_fail_icon.png")
	)

	add_custom_type(
		"BehaviorRepeatUntilSucceed",
		"Node",
		preload("res://addons/godot-behavior-tree-plugin/repeat_until_succeed.gd"),
		preload("res://addons/godot-behavior-tree-plugin/repeat_success_icon.png")
	)

	add_custom_type(
		"BehaviorSelector",
		"Node",
		preload("res://addons/godot-behavior-tree-plugin/selector.gd"),
		preload("res://addons/godot-behavior-tree-plugin/selector_icon.png")
	)

	add_custom_type(
		"BehaviorMemSelector",
		"Node",
		preload("res://addons/godot-behavior-tree-plugin/mem_selector.gd"),
		preload("res://addons/godot-behavior-tree-plugin/mem_selector_icon.png")
	)

	add_custom_type(
		"BehaviorSequence",
		"Node",
		preload("res://addons/godot-behavior-tree-plugin/sequence.gd"),
		preload("res://addons/godot-behavior-tree-plugin/sequence_icon.png")
	)

	add_custom_type(
		"BehaviorMemSequence",
		"Node",
		preload("res://addons/godot-behavior-tree-plugin/mem_sequence.gd"),
		preload("res://addons/godot-behavior-tree-plugin/mem_sequence_icon.png")
	)

	add_custom_type(
		"BehaviorSucceeder",
		"Node",
		preload("res://addons/godot-behavior-tree-plugin/succeeder.gd"),
		preload("res://addons/godot-behavior-tree-plugin/succeeder_icon.png")
	)

	add_custom_type(
		"BehaviorTree",
		"Node",
		preload("res://addons/godot-behavior-tree-plugin/behavior_tree.gd"),
		preload("res://addons/godot-behavior-tree-plugin/root_icon.png")
	)

	add_custom_type(
		"BehaviorWait",
		"Node",
		preload("res://addons/godot-behavior-tree-plugin/extensions/wait.gd"),
		preload("res://addons/godot-behavior-tree-plugin/extensions/wait_icon.png")
	)

func _exit_tree():
	remove_custom_type("BehaviorAction")
	remove_custom_type("BehaviorBlackboard")
	remove_custom_type("BehaviorCondition")
	remove_custom_type("BehaviorFailer")
	remove_custom_type("BehaviorInverter")
	remove_custom_type("BehaviorLimiter")
	remove_custom_type("BehaviorMaxTime")
	remove_custom_type("BehaviorMaxLimiter")
	remove_custom_type("BehaviorRepeater")
	remove_custom_type("BehaviorRepeatUntilFail")
	remove_custom_type("BehaviorRepeatUntilSucceed")
	remove_custom_type("BehaviorSelector")
	remove_custom_type("BehaviorMemSelector")
	remove_custom_type("BehaviorSequence")
	remove_custom_type("BehaviorMemSequence")
	remove_custom_type("BehaviorSucceeder")
	remove_custom_type("BehaviorTree")
	remove_custom_type("BehaviorWait")
