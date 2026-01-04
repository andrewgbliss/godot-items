@tool
class_name Consumable extends Item

@export var hp: int = 0
@export var mp: int = 0
@export var sp: int = 0
@export var consume_on_pickup: bool = false

func save():
	var data = super.save()
	data["hp"] = hp
	data["mp"] = mp
	data["sp"] = sp
	data["consume_on_pickup"] = consume_on_pickup
	return data

func restore(data):
	super.restore(data)
	if data.has("hp"):
		hp = data["hp"]
	if data.has("mp"):
		mp = data["mp"]
	if data.has("sp"):
		sp = data["sp"]
	if data.has("consume_on_pickup"):
		consume_on_pickup = data["consume_on_pickup"]
