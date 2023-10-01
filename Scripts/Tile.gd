extends Node

@onready var highlight = $Highlight

var selected = false


# Called when the node enters the scene tree for the first time.
func _ready():
	highlight.visible = false
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
# func _process(delta):
#	pass

func select():
	selected = true
	highlight.visible = true
	
func deselect():
	selected = false
	highlight.visible = false
	
func resize(s):
	self.scale = Vector2(s,s)


func _input(event):
	if event is InputEventMouseMotion:
		if (event.position - self.position).length() < 50:
			select()
		else:
			deselect()
