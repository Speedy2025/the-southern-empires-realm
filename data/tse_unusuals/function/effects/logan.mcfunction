execute as @s at @s unless block ~ ~-1 ~ minecraft:air rotated ~ 0 positioned ~ ~1.3 ~ positioned ^ ^ ^-.15 run function tse_unusuals:effects/logan_tree/wings
execute as @s[scores={tse_OntimeMSec=0}] at @s unless block ~ ~-1 ~ minecraft:air run function tse_unusuals:effects/logan_tree/one_ten
execute as @s[scores={tse_OntimeMSec=1}] at @s unless block ~ ~-1 ~ minecraft:air run function tse_unusuals:effects/logan_tree/eleven_twenty


execute as @s at @s if block ~ ~-1 ~ minecraft:air run particle flame ~ ~ ~ 0 0 0 0 3 force @a[tag=Unusual]