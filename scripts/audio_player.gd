extends Node

var hurt = preload("res://martian_mike_assets/audio/hurt.wav")
var jump = preload("res://martian_mike_assets/audio/jump.wav")

func play_sfx(sfx_name: String):

	var stream = null
	if sfx_name == "hurt":
		stream = hurt
	elif sfx_name == "jump":
		stream = jump
	else:
		print("Invalid sfx name " + sfx_name)
		return
		
	var asp = AudioStreamPlayer.new()
	asp.stream = stream
	asp.name = "SFX"
	add_child(asp)
	
	asp.play()
	
	await asp.finished
	asp.queue_free()
