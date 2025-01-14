extends Node


func _ready() -> void:
	print("Server ready to host.")




func _exit_tree() -> void:
	queue_free()
