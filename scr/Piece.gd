extends Node2D
var positionInGrid:Vector2
#Shape described by column:
const I_SHAPE = [[0,0,1,0],[0,0,1,0],[0,0,1,0],[0,0,1,0]]
const J_SHAPE = [[0,2,0],[0,2,0],[0,2,2]]
const L_SHAPE = [[0,3,3],[0,3,0],[0,3,0]]
const O_SHAPE = [[0,0,0,0],[0,4,4,0],[0,4,4,0],[0,0,0,0]]
const T_SHAPE = [[0,5,0],[0,5,5],[0,5,0]]
const Z_SHAPE = [[0,6,0],[0,6,6],[0,0,6]]
const S_SHAPE = [[0,7,0],[7,7,0],[7,0,0]]
const shapes = [I_SHAPE, J_SHAPE, L_SHAPE, O_SHAPE, T_SHAPE, Z_SHAPE, S_SHAPE]
var shape
func _init():
	shape = shapes[randi() % shapes.size()]
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func getColorIndex():
	for i in range(shape.size()):
		for j in range(shape[0].size()):
			if shape[i][j] != 0:
				return shape[i][j]
	return 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
