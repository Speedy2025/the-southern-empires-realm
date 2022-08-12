scoreboard players add @s tse_lootbox 1
tellraw @a ["",{"selector":"@s"},{"text":" completed an "},{"text":" Ascension","color":"gold"}]
tellraw @s ["",{"text":"Your prize is currently unobtainable! An announcement will be made once you can claim it, just let Speedy2025 know if you've completed this. Ascension 4 is still being made...","italic":true,"color":"gray"}]
playsound minecraft:block.end_portal.spawn voice @a ~ ~ ~ 10 0.75 0