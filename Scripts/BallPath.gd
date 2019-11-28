extends Path2D

const Ball = preload("res://Scenes/Ball.tscn")

# Didn't realize how unfortunate this name would be until it was too late
var balls := []

export var spawn_timer := 2.0 setget set_spawn_timer

func set_spawn_timer(new_spawn_timer: float):
	spawn_timer = new_spawn_timer
	if is_inside_tree() and get_node_or_null("SpawnTimer"):
		$SpawnTimer.wait_time = new_spawn_timer
		$SpawnTimer.start()


func _ready() -> void:
	set_spawn_timer(spawn_timer)
	spawn_ball()


func spawn_ball():
	var ball = Ball.instance()
	add_child(ball)
	if balls.size() > 0:
		ball.next_ball = balls.front()
	balls.push_front(ball)
	ball.connect("expired", self, "_on_ball_expired")


func remove_ball(ball):
	var idx = balls.find(ball)
	balls.remove(idx)
	if balls.size() >= 1:
		balls[idx-1].next_ball = null
		if balls.size() >= 2:
			balls[idx-2].next_ball = balls[idx-1]
	ball.queue_free()


func _on_SpawnTimer_timeout() -> void:

	spawn_ball()

func _on_ball_expired(ball):
	remove_ball(ball)
