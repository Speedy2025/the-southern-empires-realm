execute store result score $temp.levels tse_enchantCheck run data get storage tse:temp_ench_add Enchantments[-1].lvl
scoreboard players operation $levels.cost tse_enchantCheck += $temp.levels tse_enchantCheck
data remove storage tse:temp_ench_add Enchantments[-1]
execute store result score $temp.enchleft tse_enchantCheck run data get storage tse:temp_ench_add Enchantments
execute if score $temp.enchleft tse_enchantCheck matches 1.. run function tser_main:operations/offhand_enchant/get_cost