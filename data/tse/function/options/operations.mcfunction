# 1 - Menu
# 2 - None Jump
# 3 - Burst Jump
# 4 - Delay Jump
# 5 - High Jump
# 6 - Rocket Jump
# 7 - Grace Jump
# 8 - Disable Unusuals
# 9 - Enable Unusuals
# 10 - Mining "jump" -> 6

execute if score @s options matches 2 run scoreboard players set @s tse_jump 0
execute if score @s options matches 3 run scoreboard players set @s tse_jump 1
execute if score @s options matches 4 run scoreboard players set @s tse_jump 2
execute if score @s options matches 5 run scoreboard players set @s tse_jump 3
execute if score @s options matches 6 run scoreboard players set @s tse_jump 4
execute if score @s options matches 7 run scoreboard players set @s tse_jump 5
execute if score @s options matches 8 run tag @s remove Unusual
execute if score @s options matches 9 run tag @s add Unusual
execute if score @s options matches 10 run scoreboard players set @s tse_jump 6

# Clear mining
execute unless score @s options matches 10 if entity @s[tag=tse.jump.mining] run effect clear @s minecraft:haste
execute unless score @s options matches 10 run tag @s remove tse.jump.mining