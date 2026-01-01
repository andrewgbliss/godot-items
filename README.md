# Godot Items

## 📁 Project Structure

```
/
├── scenes/
│   └── core/
│       ├── files/                    # File utility functions
│       │   └── files_util.gd         # File operations utility
│       └── items/                    # Item system components
│           ├── nodes/
│           │   └── item_2d.gd        # 2D item node component
│           ├── resources/            # Item resource classes
│           │   ├── item.gd           # Base item resource
│           │   ├── currency.gd       # Currency item resource
│           │   ├── consumable.gd     # Consumable item resource
│           │   ├── equipable.gd      # Equipable item resource
│           │   ├── equipment.gd      # Equipment item resource
│           │   ├── armor.gd          # Armor item resource
│           │   ├── weapon.gd         # Base weapon resource
│           │   ├── melee_weapon.gd   # Melee weapon resource
│           │   ├── ranged_weapon.gd  # Ranged weapon resource
│           │   ├── item_belt.gd      # Item belt resource
│           │   └── inventory.gd      # Inventory resource
│           └── store/                # Item store and creation
│               ├── item_store.gd     # Item data store
│               └── item_create.gd    # Item creation utilities
```

## Usage

The ItemStore handles all the date for items.

```gdscript
var items = ItemStore.get_store_directory("items")

var item = ItemCreate.create_random_item()
```

## 📄 License

This project is open source. See LICENSE file for details.

---

**Happy coding! 🚀**
