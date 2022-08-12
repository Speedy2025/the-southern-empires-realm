# Add a tag so that I can clear only one item of the offhand slot (if I have other named name tags, normally it would clear one of those randomly)
item replace block 0 -64 0 container.0 with minecraft:name_tag
data modify block 0 -64 0 Items[{Slot:0b}].id set from entity @s Inventory[{Slot: -106b}].id
data modify block 0 -64 0 Items[{Slot:0b}].Count set from entity @s Inventory[{Slot: -106b}].Count
data modify block 0 -64 0 Items[{Slot:0b}].tag set from entity @s Inventory[{Slot: -106b}].tag
data modify block 0 -64 0 Items[{Slot:0b}].tag.flag set value 1b
loot replace entity @s weapon.offhand 1 mine 0 -64 0 air{drop_contents:1b}

# Transfer the name, check to see if it matches, then clear one of the name tags
data modify block 0 -64 0 Items[{Slot:0b}] set from entity @s SelectedItem
data modify block 0 -64 0 Items[{Slot:0b}].tag.display.Name set from entity @s Inventory[{Slot: -106b}].tag.display.Name
data modify storage tse:temp_ench advCriteria set value '{"text":"I Know A Secret"}'
execute store result score @s tse_enchantCheck run data modify storage tse:temp_ench advCriteria set from block 0 -64 0 Items[{Slot:0b}].tag.display.Name
execute if score @s tse_enchantCheck matches 0 if score @s c.inv.curr matches 1 run advancement grant @s only tser_main:legendary_series/root
loot replace entity @s weapon.mainhand 1 mine 0 -64 0 air{drop_contents:1b}
clear @s name_tag{flag:1b} 1

# If any name tags remain
execute store result score @s tse_enchantCheck run clear @s name_tag{flag:1b} 0
execute if score @s tse_enchantCheck matches 1.. run function tser_main:operations/offhand_rename/clear_tag

# Lastly, prevent conflicts & display success
scoreboard players set @s tse_enchantCheck 2
tellraw @s ["",{"text":"[Offhand Rename] ","color":"green"},{"text":"Successfully renamed!"}]

