extends CharacterBody2D

const SPEED = 500.0
const ACCELERATION = 3000.0
const FRICTION = 6000.0

const GRAVITY = 2000.0
const JUMP_FORCE = -700.0

const AIR_CONTROL = 1.2
const MAX_FALL_SPEED = 2000.0

var spawn_position = Vector2(7830, -50)
var lives 
var collectedCoins
var time
@onready var animated_sprite = $AnimatedSprite2D

func _ready():
	global_position = spawn_position
	lives = 1
	collectedCoins = 0

func _physics_process(delta):
	var input_dir = Input.get_axis("ui_left", "ui_right")

	# Gravity
	if not is_on_floor():
		velocity.y += GRAVITY * delta
		velocity.y = min(velocity.y, MAX_FALL_SPEED)

	# Jump
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_FORCE
		
	# Variable jump height
	if Input.is_action_just_released("ui_accept") and velocity.y < 0:
		velocity.y *= 0.5

	# Movement
	if input_dir != 0:
		var accel = ACCELERATION
		if not is_on_floor():
			accel *= AIR_CONTROL
		
		velocity.x = move_toward(velocity.x, input_dir * SPEED, accel * delta)
	else:
		var fric = FRICTION
		if not is_on_floor():
			fric *= 0.5
		
		velocity.x = move_toward(velocity.x, 0, fric * delta)

	# Direction / animatio
	if input_dir != 0:
		animated_sprite.flip_h = input_dir < 0
	move_and_slide()
