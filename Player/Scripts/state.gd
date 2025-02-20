class_name State extends Node

static var player: Player
var state_name: String = ""

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func enter() -> void:
	pass
	
func exit() -> void:
	pass
	
func process(_delta) -> State:
	return null
	
func physics(_delta) -> State:
	return null
	
func handle_input(event: InputEvent) -> State:
	return null
