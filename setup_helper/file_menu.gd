@tool
extends Control

var dir = DirAccess.open("res://")

#Just so you know for the files to show up you need to update the filesystem
#you can do this by opening the file manager, deleting or adding a file or folder

func Scripts():
	dir.make_dir("Scripts")

func Saves():
	dir.make_dir("Saves")
	
func Objects():
	dir.make_dir("Objects")

func Levels():
	dir.make_dir("Levels")
	
func Huds():
	dir.make_dir("Huds")

func Assets1():
	dir.make_dir("Assets")
	var dir1 = DirAccess.open("res://Assets/")
	dir1.make_dir("Textures")
	dir1.make_dir("Models")
	dir1.make_dir("Sounds")
	dir1.make_dir("Particles")
	dir1.make_dir("Fonts")
	dir1.make_dir("Tiles")
	var dir4 = DirAccess.open("res://Assets/Textures/")
	dir4.make_dir("Sprites")
	dir4.make_dir("3D")
	dir4.make_dir("UI")
	var dir3 = DirAccess.open("res://Assets/Tiles/")
	dir3.make_dir("Single Tiles")
	dir3.make_dir("Tile Maps")
	var dir2 = DirAccess.open("res://Assets/Sounds/")
	dir2.make_dir("SFX")
	dir2.make_dir("Music")
	
func Assets2():
	dir.make_dir("Assets")

func All():
	Scripts()
	Saves()
	Objects()
	Levels()
	Assets1()

func Colourall():
	print("coloured")

func RemoveColour():
	print("uncoloured")
