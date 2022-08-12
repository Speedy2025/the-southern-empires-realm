scoreboard players remove @s tse_raylength 1

execute unless predicate tser_main:sneaking as @e[type=#tser_wands:genetics_wand,distance=0..2.5,sort=random,limit=1] run function tser_wands:effects/genetics/mobs/root

execute if predicate tser_main:sneaking as @e[type=#tser_wands:genetics_wand,distance=0..2.5,sort=random,limit=1] run function tser_wands:effects/genetics/scan/root
execute if predicate tser_main:sneaking unless block ~ ~ ~ #aestd1:noncubic align xyz positioned ~0.5 ~0.1 ~0.5 run function tser_wands:effects/genetics/unscan/root

# If block can be traversed, continue on. Otherwise don't
execute if block ~ ~ ~ #aestd1:noncubic if score @s tse_raylength matches 1.. positioned ^ ^ ^0.025 run function tser_wands:effects/genetics/raycast