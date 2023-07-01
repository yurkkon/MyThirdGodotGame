extends StaticBody2D

var speed = 100

func _physics_process(delta):
	position.y += speed * delta
	
