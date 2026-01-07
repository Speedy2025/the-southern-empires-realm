scoreboard players operation @s tse_OntimeTicks = @s se.ontime
scoreboard players operation @s tse_OntimeTicks %= #const.10 tse_constant

execute if score @s tse_OntimeTicks matches 0 at @s run particle cherry_leaves ~ ~2.5 ~ 0.5 0 0.5 0 1 force @a[tag=Unusual]