extends Control

var dialogue = ["WELL DONE!! ROVER_X 
	   We got the Data of the Lunar surface ", "But there seems to be a confusion...", "We’re seeing a high concentration of Muonium  and stable heavy-element isotopes on the lunar 
	 surface
	","If this were debris from a human lander or a 
	crashed satellite,  we’d be seeing traces of carbon 
	fiber, polymers, or standard aluminum-lithium 
	alloys. But there’s no polymer signature here. This material is raw, metallic, and chemically 
	'impossible.'
	",

























]
var current_index = 0

@onready var label = $Label2 # Make sure you have a Label node named "Label"

func _ready():
	# Show the first line immediately
	label.text = dialogue[current_index]

func _input(event):
	if event.is_action_pressed("ui_accept"): # "ui_accept" is Space/Enter by default
		current_index += 1
		
		if current_index < dialogue.size():
			label.text = dialogue[current_index]
		else:
			queue_free() # Or hide the dialogue box
