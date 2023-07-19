extends Control

func _ready():
	var playButton = $Button
	var exitButton = $Button2
	playButton.connect("pressed", self, "_on_PlayButton_pressed")
	exitButton.connect("pressed", self, "_on_ExitButton_pressed")


func _on_PlayButton_pressed():
	
	# Load the game scene
	var gameScenePath = "res://GameScene.tscn"
	get_tree().change_scene(gameScenePath)
	
func _on_ExitButton_pressed():
	# Quit the game
	get_tree().quit()

