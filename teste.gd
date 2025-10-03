extends Control

func _on_add_pressed() -> void:
	var task_name = $rem.text
	add_task(task_name)


func add_task(task_name) -> void:
	var label = Button.new()
	label.text = task_name
	$task_container.add_child(label)
	label.pressed.connect(func():label.queue_free())
