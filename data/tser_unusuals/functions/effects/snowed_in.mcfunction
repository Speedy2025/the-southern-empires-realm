execute at @s anchored eyes run particle minecraft:campfire_cosy_smoke ^ ^.75 ^ 0 .001 0 0 1 force @a[tag=Unusual]
execute at @s anchored feet run particle minecraft:white_ash ~ ~1 ~ .2 .5 .2 .01 3 force @a[tag=Unusual]
execute at @s anchored feet if entity @s[scores={tse_OntimeTicks=1}] run particle minecraft:end_rod ^ ^1 ^ .2 -.70 .2 0 1 force @a[tag=Unusual]