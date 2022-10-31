extends Node

onready var Bat = load("res://Enemy/Bat.tscn")
onready var Knight = load("res://Enemy/Knight.tscn")

func _physics_process(_delta):
	if not has_node("Bat"):
		var bat = Bat.instance()
		add_child(bat)
		bat.name = 'Bat'
		if not has_node("Knight"):
			var knight = Knight.instance()
			add_child(knight)
			bat.name = 'Knight'
