extends Node

@onready var sm = $SceneManager
@onready var states = $States
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _input(event):
	if event.is_action_pressed("ui_right"):
		sm.change_state(states.Screens.INTRO)
	if event.is_action_pressed("escape"):
		sm.change_state(states.Screens.PAUSE_MENU)
		
func _on_play_pressed():
	sm.change_state(states.Screens.GAME)
