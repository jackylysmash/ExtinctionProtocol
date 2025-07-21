extends AudioStreamPlayer

func _on_game_ended(ending: Global.Endings):
	$AudioStreamPlayer.stop()
