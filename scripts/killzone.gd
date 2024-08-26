extends Area2D

@onready var timer: Timer = $Timer  # ctrl + drag and drop the node in left to create variable
@onready var dead: AudioStreamPlayer2D = $Dead

func _on_body_entered(body: Node2D) -> void:
	dead.play()
	Engine.time_scale = 0.5
	body.get_node("CollisionShape2D").queue_free()
	timer.start()  # begins the timer

func _on_timer_timeout() -> void:  # on timer hit this runs
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()  # reloads the main scene - start again
