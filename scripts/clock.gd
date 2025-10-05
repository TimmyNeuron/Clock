extends Control

@onready var label: Label = $ClockTexture/Label

var units = [
	{"Time Since 1970" = [
		"Seconds",
		"Minutes",
		"Hours",
		"Days",
		"Weeks",
		"Months",
		"Years",
		"MS",
		"HMS",
		"DHMS",
		"WDHMS",
		"MWDHMS",
		"YMWDHMS",
		]
	},
	{"Time Since Midnight" = [
		"Seconds",
		"Minutes",
		"Hours",
		]
	}
]


func _ready() -> void:
	pass


func _physics_process(_delta: float) -> void:
	label.text = str(floori(Time.get_unix_time_from_system()))
