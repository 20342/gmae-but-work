extends CharacterBody2D

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
@export var speed = 400
var movement_velocity = Vector2()  

func get_input():
	var input_direction = Input.get_vector("Move_left", "Move_right", "Move_up", "Move_down")
	movement_velocity = input_direction * speed  

func _physics_process(delta):
	get_input()

	
	movement_velocity.y += gravity * delta
	
	
	move_and_slide()
	
