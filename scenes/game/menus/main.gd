extends Node2D

func _ready() -> void:
	call_deferred("_after_ready")
	
func _after_ready():
	var item = ItemCreate.create_random_item()
	print("item", item)
