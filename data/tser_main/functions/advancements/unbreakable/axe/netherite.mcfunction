give @s netherite_axe{Unbreakable:1b,Adv:1b}
execute at @a run playsound minecraft:block.end_portal.spawn voice @a ~ ~ ~ 10 0.75 0
tellraw @a ["",{"selector":"@s"},{"text":" has completed the first"},{"text":" Unbreakable Axe","color":"gold"}]
advancement revoke @s from tser_main:unbreakable_series/axe/wood2
advancement grant @s only tser_main:unbreakable_series/axe/wood2 i