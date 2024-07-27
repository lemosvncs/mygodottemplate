extends Node

var states = States.Screens

var current_state:States.Screens

@onready var screen_scenes:Dictionary = {
	states.INTRO: $Intro,
	states.MAIN_MENU: $MainMenu,
	states.PAUSE_MENU: $PauseMenu,
	states.GAME: $Game,
	states.GAME_OVER: $GameOver,
	states.CREDITS: $Credits,
}

func _ready():
	current_state = states.MAIN_MENU
	set_screen_visibility(current_state)
	
func set_screen_visibility(new_state):
	
	for screen in screen_scenes:
		if screen_scenes[screen] != screen_scenes[states.GAME] and screen_scenes[screen] != screen_scenes[new_state]:
			screen_scenes[screen].visible = false
	screen_scenes[new_state].visible = true

func change_state(new_state):
	match new_state:
		states.INTRO:
			set_screen_visibility(new_state)
			current_state = new_state
		states.MAIN_MENU:
			set_screen_visibility(new_state)
			current_state = new_state
		states.PAUSE_MENU:
			set_screen_visibility(new_state)
			current_state = new_state
		states.GAME:
			set_screen_visibility(new_state)
			current_state = new_state
		states.GAME_OVER:
			set_screen_visibility(new_state)
			current_state = new_state
		states.CREDITS:
			set_screen_visibility(new_state)
			current_state = new_state
