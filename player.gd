extends RigidBody2D

var force = 1000
# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _physics_process(delta):
	if Input.is_action_pressed("move_down"):
		apply_force(Vector2(0,force))
	if Input.is_action_pressed("move_up"):
		apply_force(Vector2(0,-force))
	if Input.is_action_pressed("move_left"):
		apply_force(Vector2(-force,0))
	if Input.is_action_pressed("move_right"):
		apply_force(Vector2(force,0))


func _on_map_body_exited(body):
	
	get_tree().reload_current_scene()


func _on_map_body_shape_exited(body_rid, body, body_shape_index, local_shape_index):
	print("body out")
