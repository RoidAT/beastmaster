class_name StateWalk extends State


@export var move_speed: float = 200.0
@onready var idle: State = $"../Idle"

func _init() -> void: 
	state_name = "walk"

func enter() -> void:
	player.update_animation(state_name)
	
func exit() -> void:
	pass
	
func process(_delta) -> State:
	if player.direction == Vector2.ZERO:
		return idle
		
	player.velocity = player.direction * move_speed
	
	if player.set_direction():
		player.update_animation(state_name)
	
	return null
	
func physics(_delta) -> State:
	return null
	
func handle_input(event: InputEvent) -> State:
	return null
