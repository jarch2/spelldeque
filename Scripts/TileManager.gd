extends Node

@onready var screensize = get_viewport().size
@onready var tile_scene = preload("res://Prefabs/tile.tscn")

var numRows = 4
var numColumns = 3
var tiles = []

var gapRatio = 1/4
var midGap = 100

# Called when the node enters the scene tree for the first time.
func _ready():
	
	var vertscale = screensize.y / (numRows + gapRatio*(numRows + 1))
	var horscale = (screensize.x - midGap) / (2*numColumns + gapRatio*(2*numColumns + 1))
	
	var scale = min(vertscale, horscale)
	for i in range(0,numRows):
		for j in range(0,numColumns):
			var tile = tile_scene.instantiate()
			tile.resize(scale/100)
			tile.position = Vector2((gapRatio + 0.5) * scale + (scale + gapRatio * scale) * j, (gapRatio + 0.5) * scale + (scale + gapRatio * scale) * i)
			add_child(tile)



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
