extends OmniLight3D

@export var noise : FastNoiseLite
@export var noise_speed := 10.0
@export var noise_power := 10.0
@export var base_light_power := 40.0

var noise_time := 0.0

@onready var orig_pos := position

func _ready():
	noise_time = randf() * 10000


func _process(delta):
	noise_time += delta * noise_speed
	light_energy = base_light_power + noise.get_noise_1d(noise_time) * noise_power
	position = orig_pos + Vector3(noise.get_noise_1d(noise_time), 0, noise.get_noise_1d(noise_time+200))*0.05
