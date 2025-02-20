class_name StateIdle extends State
@onready var walk: StateWalk = $"../Walk"

func _init() -> void: 
	state_name = "idle"
	
func enter() -> void:
	player.update_animation(state_name)
	
func exit() -> void:
	pass
	
func process(_delta) -> State:
	if player.direction != Vector2.ZERO:
		return walk
	
	
	player.velocity = Vector2.ZERO
	return null
	
func physics(_delta) -> State:
	return null
	
func handle_input(event: InputEvent) -> State:
	return null
