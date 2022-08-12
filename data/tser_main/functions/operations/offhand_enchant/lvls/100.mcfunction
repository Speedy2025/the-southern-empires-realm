xp add @s -100 levels
scoreboard players remove $levels.cost tse_enchantCheck 100
execute if score $levels.cost tse_enchantCheck matches 100.. run function tser_main:operations/offhand_enchant/lvls/100