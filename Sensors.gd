extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var acc = 0
var grav = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#acc = Input.get_accelerometer()
	#grav = Input.get_gravity()
	#$AcceLabel.text = "Acc - " + str(acc)
	#$GravLabel.text = "Grav - " + str(grav)
	
	var twograv = Vector2(Input.get_gravity().x, Input.get_gravity().y)
	twograv = twograv * 100
	twograv = twograv.round()
	twograv = twograv / 100
	$"2DGravLabel" .text = "2D Grav - " + str(twograv)
