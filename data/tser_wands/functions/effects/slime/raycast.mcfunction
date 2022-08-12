scoreboard players remove @s tse_raylength 1

execute unless block ~ ~ ~ #aestd1:noncubic align xyz positioned ~0.5 ~1.1 ~0.5 if block ~ ~ ~ #aestd1:noncubic run summon slime ~ ~ ~ {Size:0,DeathLootTable:"minecraft:empty",Health:1f}
execute unless block ~ ~ ~ #aestd1:noncubic align xyz positioned ~0.5 ~1.1 ~0.5 unless block ~ ~ ~ #aestd1:noncubic run scoreboard players set @s tse_raylength 0

# If block can be traversed, continue on. Otherwise don't
execute if score @s tse_raylength matches 0 positioned ^ ^ ^-0.5 align xz positioned ~0.5 ~ ~0.5 run summon slime ~ ~ ~ {Size:0,DeathLootTable:"minecraft:empty",Health:1f}
execute if block ~ ~ ~ #aestd1:noncubic if score @s tse_raylength matches 1.. positioned ^ ^ ^0.025 run function tser_wands:effects/slime/raycast