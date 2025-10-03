extends Control

func _init() -> void:
	#precisa criar o arquivo na primeira vez q inicializa
	pass
#user:// -> armazena no cache do usuario
#res:// -> armazena no local dos arquivos do proejto

#### dictionaries
var my_dict = {} # Creates an empty dictionary.

var dict_variable_key = "Another key name"
var dict_variable_value = "value2"
var another_dict = {
	"Some key name": "value1",
	dict_variable_key: dict_variable_value,
}

var points_dict = {"White": 50, "Yellow": 75, "Orange": 100}


func _ready() -> void:
	#var text = load_from_file()
	points_dict["red"] = 30
	#points_dict.assign(points_dict)
	#print(points_dict)
	#print(points_dict["Yellow"])
	#for item in points_dict:
		#print(points_dict[item])

#submit
func _on_button_pressed() -> void:
	Global.save_dict = Global.task_counter
	
	#Global.save_to_file($TextEdit.text)
	$Label.text = $TextEdit.text

func _on_label_ready() -> void:
	$Label.text = Global.load_from_file()
