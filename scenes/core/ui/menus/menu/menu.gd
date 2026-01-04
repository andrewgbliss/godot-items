class_name Menu extends CanvasLayer

@export var menu_name: String = ""
@export var animation_transition_in: String = "transition_in"
@export var animation_transition_out: String = "transition_out"
@export var animation_transition_away_in: String = "transition_away_in"
@export var animation_transition_away_out: String = "transition_away_out"
@export var input_action: String = ""

@export var pause_game: bool = true
@export var hide_on_ready: bool = true
@export var show_menu_on_ready: bool = false

@onready var animation_player: AnimationPlayer = $AnimationPlayer

signal paused_pushed
signal unpaused_pushed

var parent

func _ready():
	parent = get_parent()
	if hide_on_ready:
		_off()
	if show_menu_on_ready:
		transition_in()

func _input(event: InputEvent) -> void:
	if input_action != "":
		if event.is_action_pressed(input_action):
			if not get_tree().paused:
					if pause_game:
						paused_pushed.emit()
					parent.push(menu_name)
			else:
				if parent.size() > 0 and parent.get_top() != menu_name:
					await parent.pop()
					parent.push(menu_name)
				else:
					if pause_game:
						unpaused_pushed.emit()
					parent.pop_all()
					
func _off():
	hide()
	set_process(false)

func _on():
	show()
	set_process(true)

func transition_in():
	_on()
	animation_player.play(animation_transition_in)
	await animation_player.animation_finished

func transition_out():
	animation_player.play(animation_transition_out)
	await animation_player.animation_finished
	_off()

func transition_away_in():
	_on()
	animation_player.play(animation_transition_away_in)
	await animation_player.animation_finished
	
func transition_away_out():
	animation_player.play(animation_transition_away_out)
	await animation_player.animation_finished
	_off()
