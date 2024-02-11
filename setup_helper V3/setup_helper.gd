@tool
extends EditorPlugin

var setup_dock_1 = preload("res://addons/setup_helper/Window_Menu.tscn").instantiate()
var setup_dock_2 = preload("res://addons/setup_helper/file_menu.tscn").instantiate()
var setup_dock_3 = preload("res://addons/setup_helper/debug_menu.tscn").instantiate()
var setup_dock_4 = preload("res://addons/setup_helper/extra_menu.tscn").instantiate()

func _enter_tree():
	add_control_to_dock(DOCK_SLOT_RIGHT_BL, setup_dock_1)
	add_control_to_dock(DOCK_SLOT_RIGHT_BL, setup_dock_2)
	add_control_to_dock(DOCK_SLOT_RIGHT_BL, setup_dock_4)
	add_control_to_dock(DOCK_SLOT_RIGHT_BL, setup_dock_3)
	
func _exit_tree():
	remove_control_from_docks(setup_dock_1)
	remove_control_from_docks(setup_dock_2)
	remove_control_from_docks(setup_dock_3)
	remove_control_from_docks(setup_dock_4)
