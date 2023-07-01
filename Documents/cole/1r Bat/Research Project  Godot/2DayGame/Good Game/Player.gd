extends CharacterBody2D

@export var speed = 500
var direction := Vector2(1, 0)
var screen_size
var score = 0

func _ready():
	screen_size = get_viewport().get_visible_rect().size
	print(screen_size)
	


func _process(delta):  
	position.x += direction.x * speed * delta
	print(position)
	if position.x < 0 or position.x > screen_size.x or position.y < 0 or position.y > screen_size.y:
		print(position)
		die()
	elif move_and_slide():
		die()
	else:
		move_and_slide()



func _on_touch_screen_button_released():
	direction.x *= -1 
	print("screen was pressed")

func die():
	print(" die() was called")
	queue_free()
	$"../RestartUI/Button".show()



func _on_timer_timeout():
	score += 1 
	$"../RestartUI/Score".text = str(score)
