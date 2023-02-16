extends Node2D

const myName = ["Felipe", "Liberman", "Fuchs"]
var userInput = []

# Called when the node enters the scene tree for the first time.
func _ready():
	# Shows my name as a (pre-filled) list
	$labelName.text += str(myName)
	
# Handles btnSubmit pressed
func _on_btnSubmit_pressed():
	userInput.append($lineEditUserInput.text)
	showOnScreen(str(userInput))
	cleanUpInput()
	
# Show text on the labelOutput text
func showOnScreen(text):
	$labelOutput.text = text

func cleanUpInput():
	$lineEditUserInput.text = "" # Clear input for better UX
	$lineEditUserInput.grab_focus() # Puts focus on input
