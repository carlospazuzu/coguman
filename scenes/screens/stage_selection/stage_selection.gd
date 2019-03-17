extends Node2D

const ROW = 0
const COLUMN = 1

const POSITIONS = [
					[ [188, 192], [508, 192], [828, 192] ],
					[ [188, 448], [508, 448], [828, 448] ],
					[ [188, 704], [508, 704], [828, 704] ]
				  ]


var current_pos = [1, 1]

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed('ui_down'):
		if current_pos[ROW] < 2: current_pos[ROW] += 1
		$cursor.emit_signal('cursor_has_just_moved')
	if Input.is_action_just_pressed('ui_up'):
		if current_pos[ROW] > 0: current_pos[ROW] -= 1
		$cursor.emit_signal('cursor_has_just_moved')
	if Input.is_action_just_pressed('ui_left'):
		if current_pos[COLUMN] > 0: current_pos[COLUMN] -= 1
		$cursor.emit_signal('cursor_has_just_moved')
	if Input.is_action_just_pressed('ui_right'):
		if current_pos[COLUMN] < 2: current_pos[COLUMN] += 1
		$cursor.emit_signal('cursor_has_just_moved')
	
	var x = POSITIONS[current_pos[ROW]][current_pos[COLUMN]][ROW]
	var y = POSITIONS[current_pos[ROW]][current_pos[COLUMN]][COLUMN]
	
	$cursor.position = Vector2(x, y)
