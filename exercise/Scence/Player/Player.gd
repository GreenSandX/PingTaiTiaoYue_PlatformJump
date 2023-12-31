extends KinematicBody2D
class_name Player
onready var animation_state = get_node("AnimationTree").get("parameters/playback")
onready var raycast = get_node("Raycast2D")
export(int) var gravity = 1000
export(int) var jump_speed = -300
export(int) var walk_speed = 75
export(int) var dash_speed = 300
export(int) var num_dashes = 1
var rigid_push:Vector2 = Vector2(255,0)#貌似是为了防止走在石头上面也推动它
 #handle slopes
var snap_length:int = 2
var snap_direction:Vector2 = Vector2.DOWN
var snap_vector:Vector2 = snap_length*snap_direction
var floor_max_angle = deg2rad(65)
 # handle slopes
var velocity:Vector2
var direction = "right"
var is_dashing = false
var is_attacking = false
var state
enum states{IDLE,WALK,FALL,JUMP,ATTACK,DASH}



