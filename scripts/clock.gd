extends Control

@onready var label: Label = $ClockTexture/Label

var date = Time.get_datetime_dict_from_system()
var time = Time.get_time_dict_from_system()

var military_time = false
var relation_to_meridian = "AM"

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
	date = Time.get_datetime_dict_from_system()
	time = Time.get_time_dict_from_system()
	
	var hour = time.hour
	var minute = time.minute
	var second = time.second
	
	if !military_time and time.hour > 12:
		hour = time.hour - 12
		relation_to_meridian = "PM"
	
	if time.second < 10:
		second = str("0", time.second)
	
	if time.minute < 10:
		minute = str("0", time.minute)
	
	if time.hour < 10:
		hour = str("0", hour)
		
	
	if military_time:
		label.text = str(hour, ":", minute, ":", second)
	else:
		label.text = str(hour, ":", minute, ":", second, " ", relation_to_meridian)
	
