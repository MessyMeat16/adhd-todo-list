extends Control

var counter = 0

func _on_button_pressed() -> void:
	var label = Label.new()
	var do_name = label.text
	do_name = $TextEdit.text
	if do_name == "":
		pass
	else:
		$VBoxContainer.add_child(label)
		label.text = $TextEdit.text
		
		#Global.values = 
		#print(Global.values)
		
		$TextEdit.text = ""
		counter += 1


func _ready() -> void:
	#var _fds = Global.file_to_dictionary()
	#print(str(fds) + "cu")
	#print(Global.load_from_file())
	pass
	#for item in get_tree():
		#print(item)
	for child in $VBoxContainer.get_children():
		print(str(child))
