extends Node2D

@onready var panel_principal = $PrincipalPanelLayer
@onready var controls = $PrincipalPanelLayer/MarginContainer/HBoxContainer/VBoxContainer/RightPanel/ControlsScrollContainer
@onready var main_actions = $PrincipalPanelLayer/MarginContainer/HBoxContainer/VBoxContainer/RightPanel/MainScrollContainer2
@onready var Aps_Mps = $PrincipalPanelLayer/MarginContainer/HBoxContainer/VBoxContainer/RightPanel/MpsScrollContainer3
@onready var gui = $PrincipalPanelLayer/MarginContainer/HBoxContainer/VBoxContainer/RightPanel/GUIScrollContainer4
@onready var fireArms = $PrincipalPanelLayer/MarginContainer/HBoxContainer/VBoxContainer/RightPanel/FireScrollContainer
@onready var blades = $PrincipalPanelLayer/MarginContainer/HBoxContainer/VBoxContainer/RightPanel/BladesScrollContainer

# Función para ocultar todos los contenedores de scroll
func hide_all_panels() -> void:
	controls.hide()
	main_actions.hide()
	Aps_Mps.hide()
	gui.hide()
	fireArms.hide()
	blades.hide()


func _ready() -> void:
	panel_principal.hide()
	hide_all_panels()
	

func _on_help_button_pressed() -> void:
	if not panel_principal.visible:
		panel_principal.show()
	else:
		panel_principal.hide()	
		
		
func _on_exit_button_pressed() -> void:
	panel_principal.hide()
	

func _on_controls_button_pressed() -> void:
	hide_all_panels()
	controls.show()

func _on_main_actions_button_pressed() -> void:
	hide_all_panels()
	main_actions.show()

func _on_ap_button_pressed() -> void:
	hide_all_panels()
	Aps_Mps.show()


func _on_gui_button_pressed() -> void:
	hide_all_panels()
	gui.show()

func _on_firearms_button_pressed() -> void:
	hide_all_panels()
	fireArms.show()

func _on_blades_button_pressed() -> void:
	hide_all_panels()
	blades.show()
