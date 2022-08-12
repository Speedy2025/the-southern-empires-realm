scoreboard players set @s tse_enchantCheck 0
execute store result score @s tse_modelData run data get entity @s SelectedItem.tag.CustomModelData
execute if score @s tse_modelData matches 0 store success score @s tse_enchantCheck run data get entity @s SelectedItem
execute unless score @s tse_modelData matches 1.. if score @s tse_enchantCheck matches 1 store success score @s tse_enchantCheck run data get entity @s Inventory[{Slot: -106b}].tag.pages
execute unless score @s tse_modelData matches 1.. if score @s tse_enchantCheck matches 1 store success score @s tse_enchantCheck run data get entity @s Inventory[{Slot: -106b}].tag.pages
execute if score @s tse_enchantCheck matches 1 run item modify entity @s weapon.mainhand tser_main:apply_lore/0
execute if score @s tse_enchantCheck matches 1 if data entity @s Inventory[{Slot: -106b}].tag.pages[1] run item modify entity @s weapon.mainhand tser_main:append_lore/1
execute if score @s tse_enchantCheck matches 1 if data entity @s Inventory[{Slot: -106b}].tag.pages[2] run item modify entity @s weapon.mainhand tser_main:append_lore/2
execute if score @s tse_enchantCheck matches 1 if data entity @s Inventory[{Slot: -106b}].tag.pages[3] run item modify entity @s weapon.mainhand tser_main:append_lore/3
execute if score @s tse_enchantCheck matches 1 if data entity @s Inventory[{Slot: -106b}].tag.pages[4] run item modify entity @s weapon.mainhand tser_main:append_lore/4

execute if score @s tse_enchantCheck matches 0 run tellraw @s ["",{"text":"[Offhand Lore] ","color":"green"},{"text":"Error: Could not set the lore. Please use book with JSON text and a non-custom item."}]