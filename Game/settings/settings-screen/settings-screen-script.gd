extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://start-screen-scene/start-screen.tscn")


func _on_audiobutton_pressed() -> void:
	get_tree().change_scene_to_file("res://settings/audio-screen/audio-screen.tscn")


func _on_graphicsbutton_pressed() -> void:
	get_tree().change_scene_to_file("res://settings/graphics-screen/graphics-screen.tscn")
