extends Node2D

@onready var panel_principal = $PrincipalPanelLayer
@onready var help_button_audio = $HelpButtonLayer/HBoxContainer/help_button/HelpButtonAudio
@onready var exit_button_audio = $PrincipalPanelLayer/MarginContainer/HBoxContainer/VBoxContainer/ExitPanel/HBoxContainer/ExitButton/ExitAudio

func _ready() -> void:
	panel_principal.hide()
	

func _on_help_button_pressed() -> void:
	help_button_audio.playing = true 
	if not panel_principal.visible:
		panel_principal.show()
	else:
		panel_principal.hide()	
		
		
func _on_exit_button_pressed() -> void:
	exit_button_audio.playing = true 
	panel_principal.hide()
	
