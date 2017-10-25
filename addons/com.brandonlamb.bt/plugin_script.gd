tool

extends EditorPlugin

func _enter_tree():
  add_custom_type(
    "BehaviorAction",
    "Node",
    preload("res://addons/com.brandonlamb.bt/action.gd"),
    preload("res://addons/com.brandonlamb.bt/action_icon.png")
  )

  add_custom_type(
    "BehaviorCondition",
    "Node",
    preload("res://addons/com.brandonlamb.bt/condition.gd"),
    preload("res://addons/com.brandonlamb.bt/condition_icon.png")
  )

  add_custom_type(
    "BehaviorError",
    "Node",
    preload("res://addons/com.brandonlamb.bt/error.gd"),
    preload("res://addons/com.brandonlamb.bt/error_icon.png")
  )

  add_custom_type(
    "BehaviorFailer",
    "Node",
    preload("res://addons/com.brandonlamb.bt/failer.gd"),
    preload("res://addons/com.brandonlamb.bt/error_icon.png")
  )

  add_custom_type(
    "BehaviorInverter",
    "Node",
    preload("res://addons/com.brandonlamb.bt/inverter.gd"),
    preload("res://addons/com.brandonlamb.bt/inverter_icon.png")
  )

  add_custom_type(
    "BehaviorLimiter", 
    "Node",
    preload("res://addons/com.brandonlamb.bt/limiter.gd"),
    preload("res://addons/com.brandonlamb.bt/inverter_icon.png")
  )

  add_custom_type(
    "BehaviorMaxLimiter", 
    "Node",
    preload("res://addons/com.brandonlamb.bt/limiter.gd"),
    preload("res://addons/com.brandonlamb.bt/inverter_icon.png")
  )

  add_custom_type(
    "BehaviorRepeater",
    "Node",
    preload("res://addons/com.brandonlamb.bt/repeater.gd"),
    preload("res://addons/com.brandonlamb.bt/inverter_icon.png")
  )

  add_custom_type(
    "BehaviorRepeatUntilFail",
    "Node",
    preload("res://addons/com.brandonlamb.bt/repeat_until_fail.gd"),
    preload("res://addons/com.brandonlamb.bt/inverter_icon.png")
  )

  add_custom_type(
    "BehaviorRepeatUntilSucceed",
    "Node",
    preload("res://addons/com.brandonlamb.bt/repeat_until_succeed.gd"),
    preload("res://addons/com.brandonlamb.bt/inverter_icon.png")
  )

  add_custom_type(
    "BehaviorSelector",
    "Node",
    preload("res://addons/com.brandonlamb.bt/selector.gd"),
    preload("res://addons/com.brandonlamb.bt/selector_icon.png")
  )

  add_custom_type(
    "BehaviorSequence",
    "Node",
    preload("res://addons/com.brandonlamb.bt/sequence.gd"),
    preload("res://addons/com.brandonlamb.bt/sequence_icon.png")
  )

  add_custom_type(
    "BehaviorSucceeder",
    "Node",
    preload("res://addons/com.brandonlamb.bt/succeeder.gd"),
    preload("res://addons/com.brandonlamb.bt/succeeder_icon.png")
  )

  add_custom_type(
    "BehaviorTree",
    "Node",
    preload("res://addons/com.brandonlamb.bt/root.gd"),
    preload("res://addons/com.brandonlamb.bt/root_icon.png")
  )

  add_custom_type(
    "BehaviorWait",
    "Node",
    preload("res://addons/com.brandonlamb.bt/wait.gd"),
    preload("res://addons/com.brandonlamb.bt/action_icon.png")
  )

func _exit_tree():
  remove_custom_type("BehaviorAction")
  remove_custom_type("BehaviorCondition")
  remove_custom_type("BehaviorError")
  remove_custom_type("BehaviorFailer")
  remove_custom_type("BehaviorInverter")
  remove_custom_type("BehaviorLimiter")
  remove_custom_type("BehaviorMaxTime")
  remove_custom_type("BehaviorRepeater")
  remove_custom_type("BehaviorRepeatUntilFail")
  remove_custom_type("BehaviorRepeatUntilSucceed")
  remove_custom_type("BehaviorSelector")
  remove_custom_type("BehaviorSequence")
  remove_custom_type("BehaviorSucceeder")
  remove_custom_type("BehaviorTree")
  remove_custom_type("BehaviorWait")
