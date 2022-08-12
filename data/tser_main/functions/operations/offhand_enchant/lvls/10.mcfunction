xp add @s -10 levels
scoreboard players remove $levels.cost tse_enchantCheck 10
execute if score $levels.cost tse_enchantCheck matches 10.. run function tser_main:operations/offhand_enchant/lvls/1