@tool
extends Control

func colisions():
	print("hi")
	ProjectSettings.set_setting("layer_names/2d_physics/layer_1", "Player")
	ProjectSettings.set_setting("layer_names/2d_physics/layer_2", "Colisions")
	ProjectSettings.set_setting("layer_names/3d_physics/layer_1", "Player")
	ProjectSettings.set_setting("layer_names/3d_physics/layer_2", "Colisions")
	
func remove_colisions():
	ProjectSettings.set_setting("layer_names/2d_physics/layer_1", "")
	ProjectSettings.set_setting("layer_names/2d_physics/layer_2", "")
	ProjectSettings.set_setting("layer_names/3d_physics/layer_1", "")
	ProjectSettings.set_setting("layer_names/3d_physics/layer_2", "")

func vr_setup():
	ProjectSettings.set_setting("xr/openxr/enabled", true)
	ProjectSettings.set_setting("xr/shaders/enabled", true)
	print("XR/VR created")
	print("XR/VR is easier to use with XR/VR plugin such as openXR")

func vr_desetup():
	ProjectSettings.set_setting("xr/openxr/enabled", false)
	ProjectSettings.set_setting("xr/shaders/enabled", false)
	print("XR/VR removed")
