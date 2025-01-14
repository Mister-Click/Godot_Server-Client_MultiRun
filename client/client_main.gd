extends Node


func _ready() -> void:
	print("Client ready to connect.")




func _exit_tree() -> void:
	queue_free()
