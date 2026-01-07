scoreboard players operation #tse_consider se.ontime = @s se.ontime

# 4 hours
scoreboard players operation #tse_consider se.ontime %= #const.288000 tse_constant
execute if entity @s[tag=!tse.cooldown] if score #tse_consider se.ontime matches 1..100 run scoreboard players add @s tse_lootbox 1
execute if entity @s[tag=!tse.cooldown] if score #tse_consider se.ontime matches 1..100 run scoreboard players add @s se.maxHomes 1
execute if entity @s[tag=!tse.cooldown] if score #tse_consider se.ontime matches 1..100 run function se:save/save_all
execute if entity @s[tag=!tse.cooldown] if score #tse_consider se.ontime matches 1..100 run tellraw @s ["",{text:"[TSERv5]",color:"green"},{text:" You've been awarded an ontime box and an additional home!"}]
execute if score #tse_consider se.ontime matches 1..100 run tag @s add tse.cooldown
execute if score #tse_consider se.ontime matches 101.. run tag @s remove tse.cooldown
