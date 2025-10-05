extends Button

#var screen_tween_in: Tween = create_tween()

@onready var main: Control = $"../../.."
@onready var camera: Camera2D = $"../../../Camera2D"
@onready var clock: Control = $"../.."
@onready var clock_texture: TextureRect = $".."

@onready var cooldown: Timer = $Cooldown

func _ready() -> void:
	#screen_tween_in.tween_property(camera, "zoom", 5)
	#print(screen_tween_in.is_running())
	pass

func _pressed() -> void:
	pass
