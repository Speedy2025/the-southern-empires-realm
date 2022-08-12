scoreboard players set @s tse_enchantCheck 0
execute store result score @s tse_modelData run data get entity @s SelectedItem.tag.CustomModelData
execute unless score @s tse_modelData matches 1.. store success score @s tse_enchantCheck run data get entity @s Inventory[{Slot: -106b, id: "minecraft:name_tag"}].tag.display.Name
execute if score @s tse_enchantCheck matches 1 store success score @s tse_enchantCheck run data get entity @s SelectedItem
execute if score @s tse_enchantCheck matches 1 run function tser_main:operations/offhand_rename/success