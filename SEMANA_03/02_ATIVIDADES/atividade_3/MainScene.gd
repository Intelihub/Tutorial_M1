extends Node2D

const myName = ["Felipe", "Liberman", "Fuchs"]
var userInput = []

# Called when the node enters the scene tree for the first time.
func _ready():
	# Shows my name as a (pre-filled) list
	$labelName.text += str(myName)

func _input(ev):
	# Makes enter behave like button press
	if Input.is_key_pressed(KEY_ENTER):
		processUserInput()

# Show text on the labelOutput text
func _showOnScreen(text):
	$labelOutput.text = text

# Clears the input and sets focus on it again
func _cleanUpInput():
	$lineEditUserInput.text = "" # Clear input for better UX
	$lineEditUserInput.grab_focus() # Puts focus on input

# Read input, show on screen, and clear up input
func processUserInput():
	userInput.append($lineEditUserInput.text)
	_showOnScreen(str(userInput))
	_cleanUpInput()
	
# Handles btnSubmit pressed
func _on_btnSubmit_pressed():
	processUserInput()
