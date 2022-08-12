# Remove the tag that let me clear only the offhand slot from the items
data modify block 0 -64 0 Items[{Slot:0b}].id set from entity @s Inventory[{Slot: -106b}].id
data modify block 0 -64 0 Items[{Slot:0b}].Count set from entity @s Inventory[{Slot: -106b}].Count
data modify block 0 -64 0 Items[{Slot:0b}].tag set from entity @s Inventory[{Slot: -106b}].tag
data remove block 0 -64 0 Items[{Slot:0b}].tag.flag
loot replace entity @s weapon.offhand 1 mine 0 -64 0 air{drop_contents:1b}