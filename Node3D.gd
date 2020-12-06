extends Node3D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var p = PackedSceneGLTF.new()
	$ToImport.add_child(p.import_gltf_scene("/tmp/model/Fox.glb"))
	$ToImport.add_child(p.import_gltf_scene("/tmp/model/Fox.glb"))
	p.export_gltf($ToImport, "/tmp/meow.glb")
	get_tree().quit()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
