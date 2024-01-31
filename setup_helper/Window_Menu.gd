@tool
extends Control

func _process(_delta):
	if ProjectSettings.settings_changed:
		if ProjectSettings.get_setting("display/window/size/resizable", true):
			$CheckButton.button_pressed = true
		else:
			$CheckButton.button_pressed = false
		
		if ProjectSettings.get_setting("display/window/size/borderless", true):
			$CheckButton2.button_pressed = true
		else:
			$CheckButton2.button_pressed = false

func screen1():
	ProjectSettings.set_setting("display/window/size/viewport_width", 640)
	ProjectSettings.set_setting("display/window/size/viewport_height", 480)
	ProjectSettings.save()

func screen2():
	ProjectSettings.set_setting("display/window/size/viewport_width", 1280)
	ProjectSettings.set_setting("display/window/size/viewport_height", 720)
	ProjectSettings.save()
	
func screen3():
	ProjectSettings.set_setting("display/window/size/viewport_width", 2560)
	ProjectSettings.set_setting("display/window/size/viewport_height", 1440)
	ProjectSettings.save()

func screen4():
	ProjectSettings.set_setting("display/window/size/viewport_width", 3840)
	ProjectSettings.set_setting("display/window/size/viewport_height", 2160)
	ProjectSettings.save()

func screenRESET():
	ProjectSettings.set_setting("display/window/size/viewport_width", 1152)
	ProjectSettings.set_setting("display/window/size/viewport_height", 648)
	ProjectSettings.save()

func strech_off():
	ProjectSettings.set_setting("display/window/stretch/mode", "disabled")
	ProjectSettings.save()

func strech_CI():
	ProjectSettings.set_setting("display/window/stretch/mode", "canvas_items")
	ProjectSettings.save()

func strech_VP():
	ProjectSettings.set_setting("display/window/stretch/mode", "viewport")
	ProjectSettings.save()


func _Resizable_toggle(toggled_on):
	ProjectSettings.set_setting("display/window/size/resizable", toggled_on)
	ProjectSettings.save()


func _borderless_toggle(toggled_on):
	ProjectSettings.set_setting("display/window/size/borderless", toggled_on)
	ProjectSettings.save()
