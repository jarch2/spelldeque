extends Node

@onready var player = preload("res://Prefabs/Player.tscn")
@onready var screensize = get_viewport().size

enum playState {play, execute}
var currentState

var eventQueue = []

var player1
var player2

# Called when the node enters the scene tree for the first time.
func _ready():
	currentState = playState.play
	player1 = player.instantiate()
	player2 = player.instantiate()
	player1.position = Vector2(screensize.x - 100, screensize.y - 100)
	player2.position = Vector2(screensize.x - 100, screensize.y - 200)
	add_child(player1)
	add_child(player2)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _attempt_execute():
	pass
