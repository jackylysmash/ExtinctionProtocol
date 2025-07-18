@tool
class_name Coin
extends Area2D

@export var animation_name: String = "chicken"  # Set in editor or code
@onready var pickupsfx = $Pickup

func _ready():
	if $AnimatedSprite2D:
		$AnimatedSprite2D.play(animation_name)

func _on_body_entered(_body):
	pickupsfx.play()
	Global.collect_coin()
	queue_free()
