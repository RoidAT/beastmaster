class_name Slime extends CharacterBody2D


const SPEED = 10.0

func _ready():
	pass
	
func _process(delta): 
	velocity = Vector2(1, 0)*SPEED
	

func _physics_process(delta: float) -> void:
	move_and_slide()
