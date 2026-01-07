scoreboard players operation @s tse_OntimeTicks = @s se.ontime
scoreboard players operation @s tse_OntimeTicks %= #const.10 tse_constant

execute unless score @s tse_OntimeTicks matches 0 run return 1
execute store result score @s tse_OntimeMSec run random value 0..3
execute if score @s tse_OntimeMSec matches 0 at @s run particle minecraft:tinted_leaves{color:[1, 0.2, 0, 1]} ~ ~2.5 ~ 0.5 0 0.5 0.2 1 force @a[tag=Unusual]
execute if score @s tse_OntimeMSec matches 2 at @s run particle minecraft:tinted_leaves{color:[1, 1, 0.2, 0.7]} ~ ~2.5 ~ 0.5 0 0.5 0.2 1 force @a[tag=Unusual]
execute if score @s tse_OntimeMSec matches 3 at @s run particle minecraft:tinted_leaves{color:[1, 0.5, 0, 0.2]} ~ ~2.5 ~ 0.5 0 0.5 0.2 1 force @a[tag=Unusual]
execute if score @s tse_OntimeMSec matches 1 at @s run particle minecraft:tinted_leaves{color:[1, 0.7, 0, 0.1]} ~ ~2.5 ~ 0.5 0 0.5 0.2 1 force @a[tag=Unusual]