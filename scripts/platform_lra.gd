extends Node2D

@onready var ray_cast_2dl: RayCast2D = $RayCast2DL
@onready var ray_cast_2dr: RayCast2D = $RayCast2DR

const speed = 60
var direction = 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if ray_cast_2dl.is_colliding():
		direction = 1
	if ray_cast_2dr.is_colliding():
		direction = -1
	position.x += speed * delta * direction
