execute store success score @s tse_enchantCheck run data get entity @s SelectedItem
execute if score @s tse_enchantCheck matches 1 run function tser_main:operations/offhand_rename/json_finish