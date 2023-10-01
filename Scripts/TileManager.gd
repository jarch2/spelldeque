extends Node

@onready var screensize = DisplayServer.window_get_size()
@onready var tile_scene = preload("res://Prefabs/tile.tscn")

var numRows = 4
var numColumns = 3
var tiles = []

# Called when the node enters the scene tree for the first time.
func _ready():
	var scale = 0.5
	var hspace = screensize.x / (numColumns * 2)
	var vspace = screensize.y / numRows
	for i in range(0,numRows):
		for j in range(0,2*numColumns):
			var tile = tile_scene.instantiate()
			tile.resize(scale)
			tile.position = Vector2(75 * scale + hspace * j, 75 + vspace * i)
			add_child(tile)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
