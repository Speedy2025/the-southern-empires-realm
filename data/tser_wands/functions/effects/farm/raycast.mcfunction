scoreboard players remove @s tse_raylength 1
execute unless block ~ ~ ~ #aestd1:noncubic run scoreboard players set @s tse_raylength 0

# If block can be traversed, continue on. Otherwise don't
execute if score @s tse_raylength matches 0 align xyz positioned ~0.5 ~0.5 ~0.5 run function tser_wands:effects/farm/endcast
execute if block ~ ~ ~ #aestd1:noncubic if score @s tse_raylength matches 1.. positioned ^ ^ ^0.025 run function tser_wands:effects/farm/raycast