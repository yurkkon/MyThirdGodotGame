extends Control

#Play Button
func _on_play_button_pressed():
	$ClickSF.play()
	get_tree().change_scene_to_file("res://game.tscn")


func _on_settings_bt_pressed():
	$ClickSF.play()


func _on_credits_button_pressed():
	$ClickSF.play()
