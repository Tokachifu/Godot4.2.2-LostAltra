extends EnemyState
@onready var collision = $"../../PlayerDetection/CollisionShape2D"
var player_entered: bool = false:
	set(value):
		player_entered = value
		collision.set_deferred("disabled", value)

func enter():
	super.enter()
	owner.set_physics_process(true)
	animation_player.play("run")
 
func exit():
	super.exit()
	owner.set_physics_process(false)
 
func transition():
	var distance = owner.direction.length()
	if distance < 550:
		get_parent().change_state("Shoot")

		
