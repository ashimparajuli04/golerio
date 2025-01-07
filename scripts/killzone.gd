extends Area2D

@onready var timer: Timer = $Timer


func _on_body_entered(body: Node2D) -> void:
	print("youdied!")
	Global.is_player_dead = true 
	Engine.time_scale = 0.5
	timer.start()


func _on_timer_timeout() -> void:
	get_tree().reload_current_scene()
	Global.is_player_dead = false
	Engine.time_scale = 1
