extends Control

func _ready():
	$Button.connect("pressed", self, "onPlayAgainPressed")
	$Button2.connect("pressed", self, "onExitPressed")

func onPlayAgainPressed():
	var gameScenePath = "res://GameScene.tscn"
	get_tree().change_scene(gameScenePath)
	
func onExitPressed():
	get_tree().quit()  # Close the game application
