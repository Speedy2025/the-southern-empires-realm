data modify storage tse_anticurse Inventory set from entity @s Inventory[{Slot:103b}]
data remove storage tse_anticurse Inventory.tag.Enchantments[{id:"minecraft:binding_curse"}]
data modify storage tse_anticurse Inventory.Slot set value 0b
data modify block 0 -64 0 Items[] set from storage tse_anticurse Inventory
loot replace entity @s armor.head 1 mine 0 -64 0 air{drop_contents:1b}

data modify storage tse_anticurse Inventory set from entity @s Inventory[{Slot:102b}]
data remove storage tse_anticurse Inventory.tag.Enchantments[{id:"minecraft:binding_curse"}]
data modify storage tse_anticurse Inventory.Slot set value 0b
data modify block 0 -64 0 Items[] set from storage tse_anticurse Inventory
loot replace entity @s armor.chest 1 mine 0 -64 0 air{drop_contents:1b}

data modify storage tse_anticurse Inventory set from entity @s Inventory[{Slot:101b}]
data remove storage tse_anticurse Inventory.tag.Enchantments[{id:"minecraft:binding_curse"}]
data modify storage tse_anticurse Inventory.Slot set value 0b
data modify block 0 -64 0 Items[] set from storage tse_anticurse Inventory
loot replace entity @s armor.legs 1 mine 0 -64 0 air{drop_contents:1b}

data modify storage tse_anticurse Inventory set from entity @s Inventory[{Slot:100b}]
data remove storage tse_anticurse Inventory.tag.Enchantments[{id:"minecraft:binding_curse"}]
data modify storage tse_anticurse Inventory.Slot set value 0b
data modify block 0 -64 0 Items[] set from storage tse_anticurse Inventory
loot replace entity @s armor.feet 1 mine 0 -64 0 air{drop_contents:1b}

tellraw @s ["",{"text":"[TSE Datapack] ","color":"green"},{"text":"Cleared a layer of Curse of Binding"}]