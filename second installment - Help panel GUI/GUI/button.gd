extends Button

@export var right_panel_text : RightPanelText #Instanciacion del recurso 
@onready var rich_text_label = $"../../../VBoxContainer/RightPanel/CenterContainer/RichTextLabel"
@onready var left_panel_button_audio =  $LeftPanelAudio

func _ready():
	pressed.connect(_display_ayuda)


func _display_ayuda() -> void:
	rich_text_label.text = right_panel_text.texto_ayuda
	

func _on_pressed() -> void:
	left_panel_button_audio.playing = true 
