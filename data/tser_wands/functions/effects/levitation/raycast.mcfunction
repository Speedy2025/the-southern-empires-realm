scoreboard players remove @s tse_raylength 1
execute unless block ~ ~ ~ #aestd1:noncubic run scoreboard players set @s tse_raylength 0
execute if entity @e[distance=0..0.5,tag=!tse.wands.caster] run scoreboard players set @s tse_raylength 0

# If block can be traversed, continue on. Otherwise don't
execute if score @s tse_raylength matches 0 run function tser_wands:effects/levitation/endray
execute if block ~ ~ ~ #aestd1:noncubic if score @s tse_raylength matches 1.. positioned ^ ^ ^0.025 run function tser_wands:effects/levitation/raycast