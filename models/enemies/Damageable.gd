extends Node

@export var health: float = 20

func hit(damage: int):
	health -= damage


# Called when the node enters the scene tree for the first time.
#func _ready():
	#pass # Replace with function body.
#
#
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#pass
