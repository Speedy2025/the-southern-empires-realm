scoreboard players remove @s tse_raylength 1

execute unless block ~ ~ ~ #aestd1:noncubic align xyz positioned ~0.5 ~1.1 ~0.5 if block ~ ~ ~ #aestd1:noncubic run tp @s ~ ~ ~
execute unless block ~ ~ ~ #aestd1:noncubic align xyz positioned ~0.5 ~1.1 ~0.5 unless block ~ ~ ~ #aestd1:noncubic run scoreboard players set @s tse_raylength 0

# If block can be traversed, continue on. Otherwise don't
execute if score @s tse_raylength matches 0 run function tser_wands:effects/teleport/safecast_fail
execute if block ~ ~ ~ #aestd1:noncubic if score @s tse_raylength matches 1.. positioned ^ ^ ^0.025 run function tser_wands:effects/teleport/safecast