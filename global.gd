extends Node

var task_counter:int = 0
var save_dict = {
	"task_counter":task_counter
}

func save_to_file(content):
	var file = FileAccess.open("user://save_game.json", FileAccess.WRITE)
	file.store_string(content)

func load_from_file():
	var file = FileAccess.open("user://save_game.json", FileAccess.READ)
	var content = file.get_as_text()
	return content

#func file_to_dictionary() -> Dictionary:
	#var file = FileAccess.open("user://save_game.json", FileAccess.READ)
	#var json_string = file.get_as_text()
	#
	#file.close()
	#
	#var json = JSON.new()
	#var _parse_result = json.parse(json_string)
	#return json.data

func _ready() -> void:
	print()
	#values = { "White": 50, "Yellow": 75, "Orange": 100 }
	#save_to_file(str(values))
	
	#print(load_from_file())
	#var test_dic = json_to_dictionary()
	
	#print(test_dic["Orange"])
