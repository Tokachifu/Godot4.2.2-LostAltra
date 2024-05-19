extends Area2D

@onready var sprite = $AnimatedSprite2D
@onready var player = get_parent().find_child("Ubel")
 
var acceleration: Vector2 = Vector2.ZERO 
var velocity: Vector2 = Vector2.ZERO
 
func _physics_process(delta):
 
	acceleration = (player.position - position).normalized() * 700
 
	velocity += acceleration * delta
	rotation = velocity.angle()
 
	velocity = velocity.limit_length(150)
 
	position += velocity * delta
 
 
func _on_body_entered(body):
	queue_free()
