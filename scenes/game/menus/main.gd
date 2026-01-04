extends Node2D

@export var inventory_menu: Menu

func _ready() -> void:
	inventory_menu.paused_pushed.connect(_on_pause_pushed)
	inventory_menu.unpaused_pushed.connect(_on_unpause_pushed)
	call_deferred("_after_ready")
	
func _after_ready():
	var item = ItemCreate.create_random_item()
	print("item", item)

func _on_pause_pushed():
	get_tree().paused = true

func _on_unpause_pushed():
	get_tree().paused = false
