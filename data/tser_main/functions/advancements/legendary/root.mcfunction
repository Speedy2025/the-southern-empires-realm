function tser_main:loot_boxes/recieve
execute at @a run playsound minecraft:block.end_portal.spawn voice @a ~ ~ ~ 10 0.75 0
tellraw @a ["",{"selector":"@s"},{"text":" has found the secret and begun"},{"text":" The Legendary Series","color":"gold"}]