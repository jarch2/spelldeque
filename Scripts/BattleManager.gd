extends Node

enum playState {play, execute}
var currentState

var endTurnButton

# Called when the node enters the scene tree for the first time.
func _ready():
	endTurnButton = get_node("Button")
	add_child(endTurnButton)
	currentState = playState.play

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
