tag @s add tse.target

scoreboard players remove @s tse_mana 25
scoreboard players set @s tse_raylength 1200
execute if score @s c.inv.curr matches 1 anchored eyes positioned ^ ^ ^0.75 run function tser_wands:effects/genetics/raycast
execute if score @s c.inv.curr matches 2 unless predicate tser_main:sneaking anchored eyes positioned ^ ^ ^0.75 run function tser_wands:effects/genetics/raycast
execute if score @s c.inv.curr matches 2 if predicate tser_main:sneaking anchored eyes positioned ^ ^ ^0.75 run tellraw @s ["",{"text":"[TSE] ","color":"green"},{"text":" Sorry, but to prevent item duping exploits, this feature is disabled in Creative."}]

tag @s remove tse.target