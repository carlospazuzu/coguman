extends KinematicBody2D

var count = 0
var state_machine = null
var started_running = false

# Called when the node enters the scene tree for the first time.
func _ready():
	state_machine = $anim_state_machine['parameters/playback']
	state_machine.start('run')

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	count += delta * 100
	
	if count >= 200:
		if not started_running:
			state_machine.travel('idle')
			started_running = true
		
