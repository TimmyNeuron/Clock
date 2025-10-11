extends Button

var direction = "in"

@onready var main: Control = $"../../.."
@onready var camera: Camera2D = $"../../../Camera2D"
@onready var clock: Control = $"../.."
@onready var clock_texture: TextureRect = $".."

@onready var cooldown: Timer = $Cooldown

var on_cooldown = false

func _ready() -> void:
	pass


func _pressed() -> void:
	if direction == "in":
		print("in")
		direction = "out"
	elif direction == "out":
		print("out")
		direction = "in"
