function tser_main:loot_boxes/recieve
tellraw @a ["",{"selector":"@s"},{"text":" completed "},{"text":" Out of Control","color":"gold"}]
playsound minecraft:block.end_portal.spawn voice @a ~ ~ ~ 10 0.75 0