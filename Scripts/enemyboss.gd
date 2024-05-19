extends CharacterBody2D

@onready var player = get_parent().find_child("Ubel")
@onready var sprite = $Sprite2D
@export var speed : float = 150.0

var direction : Vector2


func _ready():
	set_physics_process(false)

func _process(_delta):
	direction = player.position - position
 
	if direction.x < 0:
		sprite.flip_h = true
	else:
		sprite.flip_h = false

func _physics_process(delta):
	if direction.x < 0:
		velocity.x = -speed
	else:
		velocity.x = speed
	move_and_slide()
