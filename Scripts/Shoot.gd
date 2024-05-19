extends EnemyState
var player_entered: bool = false
	
func enter():
	super.enter()
	animation_player.play("shoot")

func transition():
	if owner.direction.length() > 500:
		get_parent().change_state("Follow")
