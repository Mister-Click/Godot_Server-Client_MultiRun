extends Node

const CLIENT_MAIN = preload("res://client/clientMain.tscn")
const SERVER_MAIN = preload("res://server/ServerMain.tscn")

func _init() -> void:
	if OS.has_feature("server_run"):
		var s = SERVER_MAIN.instantiate()
		self.add_child(s)
		DisplayServer.window_set_title("Server")

	if OS.has_feature("client_run"):
		var c = CLIENT_MAIN.instantiate()
		self.add_child(c)
		DisplayServer.window_set_title("Client") #+player id etc



func _exit_tree() -> void:
	queue_free()
