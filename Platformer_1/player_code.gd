extends CharacterBody2D

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
@export var speed = 400
@export var jump_height = -300
var health = 100

func _physics_process(delta):
	velocity.y += gravity * delta
	if Input.is_action_just_pressed("Jump") and is_on_floor():
		velocity.y += jump_height
	var input_direction = Input.get_axis("Move_left", "Move_right")
	velocity.x = input_direction * speed
	move_and_slide()
	if Input.is_action_just_pressed("Quit"):
		get_tree().change_scene_to_file("res://Floor.tscn")

func _on_collision_shape_2d_child_entered_tree(node):
	pass # Replace with function body.
