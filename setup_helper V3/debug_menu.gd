@tool
extends Control

var pressed
var input_print = false

func _process(_delta):
	if input_print == true:
		print(pressed)

func segment():
	print(">----------------------------------------------------------------------------------------------------<")

func print_inputs():
	print(InputMap.get_actions())

func _input(event):
	pressed = event


func print_input(toggled_on):
	if toggled_on == true:
		input_print = true
	else:
		input_print = false
