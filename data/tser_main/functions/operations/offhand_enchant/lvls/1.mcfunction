xp add @s -1 levels
scoreboard players remove $levels.cost tse_enchantCheck 1
execute if score $levels.cost tse_enchantCheck matches 1.. run function tser_main:operations/offhand_enchant/lvls/1