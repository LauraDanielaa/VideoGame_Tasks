extends Button

@export var right_panel_text : RightPanelText #Instanciacion del recurso 
@onready var rich_text_label = $"../../../VBoxContainer/RightPanel/CenterContainer/RichTextLabel"

# Called when the node enters the scene tree for the first time.
func _ready():
	pressed.connect(_display_ayuda)


func _display_ayuda() -> void:
	rich_text_label.text = right_panel_text.texto_ayuda
	
