extends CharacterBody2D


const SPEED = 3000
var gravity = 1000

func _physics_process(delta):
	velocity.y += gravity * delta
	velocity.x = delta * SPEED

	move_and_slide()
	
