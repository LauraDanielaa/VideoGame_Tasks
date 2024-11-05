extends Node2D

@onready var panel_principal = $PrincipalPanelLayer
@onready var help_button_audio = $HelpButtonLayer/HBoxContainer/help_button/HelpButtonAudio
@onready var exit_button_audio = $PrincipalPanelLayer/MarginContainer/HBoxContainer/VBoxContainer/ExitPanel/HBoxContainer/ExitButton/ExitAudio

func _ready() -> void:
	panel_principal.hide()
	

func _on_help_button_pressed() -> void:
	
	var tween = self.create_tween()  
	tween.tween_property($HelpButtonLayer/HBoxContainer/help_button, "scale", Vector2(1.1, 1.1), 0.1)
	tween.tween_property($HelpButtonLayer/HBoxContainer/help_button, "scale", scale, 0.1)\
		.set_trans(Tween.TRANS_BOUNCE)\
		.set_ease(Tween.EASE_OUT)
	
	help_button_audio.playing = true 
	if not panel_principal.visible:
		panel_principal.show()
	else:
		panel_principal.hide()	
		
		
func _on_exit_button_pressed() -> void:
	exit_button_audio.playing = true		
	panel_principal.hide()
	
