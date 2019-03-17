extends Node2D

const ROW = 0
const COLUMN = 1
var current_position = [0, 0]
const bosses_positions =  [
						 [ [136, 192], [504, 192], [884, 192] ],
						 [ [136, 460], [504, 460], [884, 460] ],
						 [ [136, 732], [504, 732], [884, 732] ],
						]

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed('ui_right'):
		if current_position[COLUMN] < 2: current_position[COLUMN] += 1
	if Input.is_action_just_pressed('ui_left'):
		if current_position[COLUMN] > 0: current_position[COLUMN] -= 1
	if Input.is_action_just_pressed('ui_down'):
		if current_position[ROW] < 2: current_position[ROW] += 1
	if Input.is_action_just_pressed('ui_up'):
		if current_position[ROW] > 0: current_position[ROW] -= 1
		
	if current_position[0] == 1 and current_position[1] == 1:
		$cogu_cursor.visible = true
		$cursor.visible = false
	else:
		$cogu_cursor.visible = false
		$cursor.visible = true
		
	var x = bosses_positions[current_position[ROW]][current_position[COLUMN]][0]
	var y = bosses_positions[current_position[ROW]][current_position[COLUMN]][1]
	
	$cursor.position = Vector2(x, y)
