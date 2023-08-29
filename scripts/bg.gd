extends ParallaxBackground

@export var bg_texture: CompressedTexture2D = preload("res://martian_mike_assets/textures/bg/Brown.png")

@export var scroll_speed = 10

@onready var sprite = $ParallaxLayer/Sprite2D

func _ready():
	sprite.texture = bg_texture

func _process(delta):
	sprite.region_rect.position += delta * Vector2(scroll_speed, 0)
	if sprite.region_rect.position >= Vector2(64,0):
		sprite.region_rect.position = Vector2.ZERO
