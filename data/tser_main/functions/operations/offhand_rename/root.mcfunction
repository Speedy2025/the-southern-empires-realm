scoreboard players set @s tse_enchantCheck 0
execute store result score @s tse_modelData run data get entity @s SelectedItem.tag.CustomModelData
execute unless score @s tse_modelData matches 1.. store success score @s tse_enchantCheck run data get entity @s Inventory[{Slot: -106b, id: "minecraft:name_tag"}].tag.display.Name
execute if score @s tse_enchantCheck matches 1 run function tser_main:operations/offhand_rename/normal_start

execute unless score @s tse_modelData matches 1.. if score @s tse_enchantCheck matches 0 store success score @s tse_enchantCheck run data get entity @s Inventory[{Slot: -106b, id: "minecraft:writable_book"}].tag.pages
execute unless score @s tse_modelData matches 1.. if score @s tse_enchantCheck matches 0 store success score @s tse_enchantCheck run data get entity @s Inventory[{Slot: -106b, id: "minecraft:written_book"}].tag.pages
execute if score @s[tag=!tse.significant] tse_enchantCheck matches 1 run scoreboard players set @s tse_enchantCheck 0
execute if score @s[tag=tse.significant] tse_enchantCheck matches 1 run function tser_main:operations/offhand_rename/json_start

execute if score @s tse_enchantCheck matches 0 run tellraw @s[tag=tse.significant] ["",{"text":"[Offhand Rename] ","color":"green"},{"text":"Error: Could not rename. Please use a named name tag or a book with JSON text and a non-custom item."}]
execute if score @s tse_enchantCheck matches 0 run tellraw @s[tag=!tse.significant] ["",{"text":"[Offhand Rename] ","color":"green"},{"text":"Error: Could not rename. Please use a named name tag and a non-custom item."}]