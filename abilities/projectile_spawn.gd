extends Ability

@export var projectile_scene : PackedScene
@export var instancing_offset : Vector2


func use(user : Node2D) -> bool:
	var instance : Projectile = projectile_scene.instantiate()
	user.getparent().add_child(instance)
	
	var instace_position = user.global_position + instancing_offset
	instance.global_position = instace_position
	
	
	return true
