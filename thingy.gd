extends Node2D


#var acc = Vector2(0, 0)
var vel = Vector2(0, 0)
#var fric = 0.18 # sliding coefficient of aluminium on teflon
var fric = 0.25 # sliding coefficient of aluminium on steel

func _ready():
	pass # Replace with function body.


func _physics_process(delta):
	var grav = Vector2(Input.get_gravity().x, Input.get_gravity().y)
	grav.y = grav.y * -1
	
	vel = vel + (grav * delta)
	vel = vel - (vel * fric * delta)
	
	self.global_translate(vel)
