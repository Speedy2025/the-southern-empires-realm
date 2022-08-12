give @s elytra{Unbreakable:1b,Adv:1b}
execute at @a run playsound minecraft:block.end_portal.spawn voice @a ~ ~ ~ 10 0.75 0
tellraw @a ["",{"selector":"@s"},{"text":" has completed the"},{"text":" Unbreakable Elytra","color":"gold"}]