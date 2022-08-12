scoreboard players add @s tse_lootbox 1
scoreboard players add @s tse_extraHomes 5
tellraw @a ["",{"selector":"@s"},{"text":" completed an "},{"text":" Ascension","color":"gold"}]
playsound minecraft:block.end_portal.spawn voice @a ~ ~ ~ 10 0.75 0