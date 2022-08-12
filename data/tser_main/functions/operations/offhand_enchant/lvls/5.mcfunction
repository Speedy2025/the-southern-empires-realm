xp add @s -5 levels
scoreboard players remove $levels.cost tse_enchantCheck 5
execute if score $levels.cost tse_enchantCheck matches 5.. run function tser_main:operations/offhand_enchant/lvls/1