extends Area2D

@onready var anim_sprite = $AnimatedSprite2D


func animate():
	anim_sprite.play("default")
