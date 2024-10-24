extends Node2D

@onready var panel_principal = $PrincipalPanelLayer


func _ready() -> void:
	panel_principal.hide()
	

func _on_help_button_pressed() -> void:
	if not panel_principal.visible:
		panel_principal.show()
	else:
		panel_principal.hide()	
		
		
func _on_exit_button_pressed() -> void:
	panel_principal.hide()
	
