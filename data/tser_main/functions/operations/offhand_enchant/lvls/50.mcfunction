xp add @s -50 levels
scoreboard players remove $levels.cost tse_enchantCheck 50
execute if score $levels.cost tse_enchantCheck matches 50.. run function tser_main:operations/offhand_enchant/lvls/1