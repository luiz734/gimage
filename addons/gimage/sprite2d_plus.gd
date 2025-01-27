@tool
extends Sprite2D
class_name Sprite2DPlus

@export_group("HSV")
@export_color_no_alpha var from: Color:
    set(v):
        from = v
        material.set_shader_parameter("from", v)
        
@export_color_no_alpha var to: Color:
    set(v):
        to = v
        material.set_shader_parameter("to", v)

@export_range(0.0, 1.0, 0.025) var tolerance = 0.0:
    set(v):
        tolerance = v
        material.set_shader_parameter("tolerance", v)

func _enter_tree() -> void:
    material = load("res://addons/gimage/sprite2d.tres")
    
