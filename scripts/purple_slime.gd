extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
@onready var ray_cast_2_dright: RayCast2D = $RayCast2Dright
@onready var ray_cast_2_dleft: RayCast2D = $RayCast2Dleft
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

const speed = 60
var direction = 1 
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if ray_cast_2_dright.is_colliding():
		direction = -1
		animated_sprite.flip_h =true
	if ray_cast_2_dleft.is_colliding():
		direction = 1
		animated_sprite.flip_h = false
	position.x += speed * delta * direction
	
