extends Control

func _ready():
	$btnResume.connect("pressed", self, "_on_resume_button_pressed")
	$btnHome.connect("pressed", self, "_on_menu_button_pressed")
	$btnExit.connect("pressed", self, "_on_exit_button_pressed")
	pause_mode = Node.PAUSE_MODE_PROCESS
	get_tree().paused = false
	self.hide()
	

func _input(event):
	if event.is_action_pressed("ui_cancel"):
		if not self.is_visible_in_tree():
			# Pause the game when the pause menu is not visible
			self.show()
			get_tree().paused = true
		
		else:
			# Unpause the game when the pause menu is already visible
			self.hide()
			get_tree().paused = false
			

func _on_resume_button_pressed():
	# Hide the pause menu and resume the game
	self.hide()
	get_tree().paused = false

func _on_menu_button_pressed():
	# Return to the main menu
	get_tree().change_scene("res://StartMenu.tscn")

func _on_exit_button_pressed():
	# Quit the game
	get_tree().quit()
