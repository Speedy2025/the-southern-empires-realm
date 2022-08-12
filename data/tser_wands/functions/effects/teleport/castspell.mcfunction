particle reverse_portal ~ ~1 ~ 0.2 0.25 0.2 0.75 50 force @a
particle witch ~ ~1 ~ 0.2 0.25 0.2 0.75 50 force @a
playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 10 0.925 1

execute anchored eyes positioned ^ ^ ^0.025 run function tser_wands:effects/teleport/safecast