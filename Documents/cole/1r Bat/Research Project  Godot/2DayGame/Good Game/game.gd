extends Node

var ObstaclesScene = preload("res://obstacle.tscn")

func spawnObstacle():
	var newObstacle = ObstaclesScene.instantiate()
	add_child(newObstacle)
	newObstacle.position.y = -1000
	randomize()
	newObstacle.position.x = randf_range(-285.0, 600.0) 
	

func _on_timer_timeout():
	spawnObstacle()


#restart button
func _on_button_pressed():
	get_tree().reload_current_scene()
