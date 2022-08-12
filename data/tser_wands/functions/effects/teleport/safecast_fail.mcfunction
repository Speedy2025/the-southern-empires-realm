execute positioned ^ ^ ^-0.5 align xz positioned ~0.5 ~ ~0.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["tse.temp.tp"]}
data modify entity @e[tag=tse.temp.tp,limit=1] Rotation set from entity @s Rotation
teleport @s @e[tag=tse.temp.tp,limit=1]
kill @e[tag=tse.temp.tp]