extends Area

var health = null

func _on_Enemy_body_entered(body):
	if body.name == "Player":
		var sound = get_node_or_null('/root/Game/Kill')
		if sound != null:
			sound.playing = true
			var _scene = get_tree().change_scene("res://UI/Lose.tscn")
