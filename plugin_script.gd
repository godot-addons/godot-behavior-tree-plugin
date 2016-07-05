tool
################
# The MIT License (MIT)
#
# Copyright (c) 2016 Jeffery Olson <olson.jeffery@gmail.com>
#
# Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

extends EditorPlugin

func _enter_tree():
	# When this plugin node enters tree, add the custom type
	add_custom_type("BehvRoot","Node",preload("res://addons/behv/behv_root.gd"),preload("res://addons/behv/behv_root_icon.png"))
	add_custom_type("BehvSelector","Node",preload("res://addons/behv/behv_sel.gd"),preload("res://addons/behv/behv_sel_icon.png"))
	add_custom_type("BehvSequence","Node",preload("res://addons/behv/behv_seq.gd"),preload("res://addons/behv/behv_seq_icon.png"))
	add_custom_type("BehvInverter","Node",preload("res://addons/behv/behv_inv.gd"),preload("res://addons/behv/behv_inv_icon.png"))
	add_custom_type("BehvSucceeder","Node",preload("res://addons/behv/behv_suc.gd"),preload("res://addons/behv/behv_suc_icon.png"))
	add_custom_type("BehvError","Node",preload("res://addons/behv/behv_error.gd"),preload("res://addons/behv/behv_base_icon.png"))
	add_custom_type("BehvAction","Node",preload("res://addons/behv/behv_action.gd"),preload("res://addons/behv/behv_action_icon.png"))
	add_custom_type("BehvCondition","Node",preload("res://addons/behv/behv_cond.gd"),preload("res://addons/behv/behv_cond_icon.png"))


func _exit_tree():
	# When the plugin node exits the tree, remove the custom type
	remove_custom_type("BehvRoot")
	remove_custom_type("BehvSelector")
	remove_custom_type("BehvSequence")
	remove_custom_type("BehvInverter")
	remove_custom_type("BehvSucceeder")
	remove_custom_type("BehvError")
	remove_custom_type("BehvAction")
	remove_custom_type("BehvCondition")



	
