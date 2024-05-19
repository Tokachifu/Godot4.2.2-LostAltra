extends EnemyState
@onready var collision = $"../../PlayerDetection/CollisionShape2D"
var playern : String = "Ubel"
var player_entered: bool = false:
	set(value):
		player_entered = value
		collision.set_deferred("disabled", value)
 
func transition():
	if player_entered:
		get_parent().change_state("Follow")
 

func _on_player_detection_body_entered(body):
	if body.name == "Ubel": 
		player_entered = true

func enter():
	super.enter()
	animation_player.play("idle")	
