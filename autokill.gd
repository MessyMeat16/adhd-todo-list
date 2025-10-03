extends Button

func _init() -> void:
	print("hi")

func pressed() -> void:
	queue_free()

func _process(delta: float) -> void:
	print("cu")
