extends PathFollow2D

signal expired(this)

export var move_speed := 50.0
export var separate := 24.0
export var catchup_speed := 1.5
export var max_catchup_speed := 60.0 * 1.5

var next_ball: Node

func _ready():
	var heads = ["Head1", "Head2", "Head3", "Head4"]
	$Sprite/AnimationPlayer.play(heads[randi() % heads.size()])
	$Sprite.self_modulate = Colors.rand_color()
	$Sprite.rotation = randf() * TAU


func _physics_process(delta: float):
	if next_ball:
		if next_ball.offset < offset:
			offset = next_ball.offset - move_speed * delta
		
		var dist = lerp(offset, next_ball.offset - separate, delta * catchup_speed) - offset
		dist = min(dist, max_catchup_speed * delta)
		offset += dist
		unit_offset = clamp(unit_offset, 0, 1)
	else:
		offset += move_speed * delta
		if unit_offset >= 1:
			# We reached the end of the path
			emit_signal("expired", self)
			unit_offset = 0.9999
			set_physics_process(false)
			return
