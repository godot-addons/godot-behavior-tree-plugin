tool

extends EditorPlugin

func _enter_tree():
  add_custom_type("BehaviorTree", "Node", preload("res://addons/com.brandonlamb.bt/behv_root.gd"), preload("res://addons/com.brandonlamb.bt/behv_root_icon.png"))
  add_custom_type("Selector", "BehaviorTree", preload("res://addons/com.brandonlamb.bt/behv_sel.gd"), preload("res://addons/com.brandonlamb.bt/behv_sel_icon.png"))
  add_custom_type("Sequence", "BehaviorTree", preload("res://addons/com.brandonlamb.bt/behv_seq.gd"), preload("res://addons/com.brandonlamb.bt/behv_seq_icon.png"))
  add_custom_type("Inverter", "BehaviorTree", preload("res://addons/com.brandonlamb.bt/behv_inv.gd"), preload("res://addons/com.brandonlamb.bt/behv_inv_icon.png"))
  add_custom_type("Succeeder", "BehaviorTree", preload("res://addons/com.brandonlamb.bt/behv_suc.gd"), preload("res://addons/com.brandonlamb.bt/behv_suc_icon.png"))
  add_custom_type("Error", "BehaviorTree", preload("res://addons/com.brandonlamb.bt/behv_error.gd"), preload("res://addons/com.brandonlamb.bt/behv_base_icon.png"))
  add_custom_type("Action", "BehaviorTree", preload("res://addons/com.brandonlamb.bt/behv_action.gd"), preload("res://addons/com.brandonlamb.bt/behv_action_icon.png"))
  add_custom_type("Condition", "BehaviorTree", preload("res://addons/com.brandonlamb.bt/behv_cond.gd"), preload("res://addons/com.brandonlamb.bt/behv_cond_icon.png"))

func _exit_tree():
  remove_custom_type("BehaviorTree")
  remove_custom_type("BehvSelector")
  remove_custom_type("BehvSequence")
  remove_custom_type("BehvInverter")
  remove_custom_type("BehvSucceeder")
  remove_custom_type("BehvError")
  remove_custom_type("BehvAction")
  remove_custom_type("BehvCondition")
