@tool
extends EditorPlugin


func _enter_tree() -> void:
    add_custom_type(
        "Sprite2DPlus", 
        "Sprite2D", 
        preload("res://addons/gimage/sprite2d_plus.gd"), 
        preload("res://addons/gimage/icon_sprite2d_plus.svg")
    )

func _exit_tree() -> void:
    remove_custom_type("Sprite2DPlus")
