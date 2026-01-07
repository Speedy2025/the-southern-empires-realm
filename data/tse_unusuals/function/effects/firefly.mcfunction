scoreboard players operation @s tse_OntimeTicks = @s se.ontime
scoreboard players operation @s tse_OntimeTicks %= #const.10 tse_constant

execute if score @s tse_OntimeTicks matches 0 at @s anchored feet run particle minecraft:firefly ~ ~1 ~ .3 0.5 .3 0 1 force @a[tag=Unusual]