scoreboard players operation @s tse_OntimeMSec = @s tse_OntimeSecond
scoreboard players operation @s tse_OntimeMSec %= 6 tse_constant
execute at @s[scores={tse_OntimeMSec=0}] run particle dust 1 0 0 1 ~0 ~0 ~0 0.01 0.01 0.01 0 2 force @a[tag=Unusual]
execute at @s[scores={tse_OntimeMSec=1}] run particle dust 1 .5 0 1 ~0 ~0 ~0 0.01 0.01 0.01 0 2 force @a[tag=Unusual]
execute at @s[scores={tse_OntimeMSec=2}] run particle dust 1 1 0 1 ~0 ~0 ~0 0.01 0.01 0.01 0 2 force @a[tag=Unusual]
execute at @s[scores={tse_OntimeMSec=3}] run particle dust 0 1 0 1 ~0 ~0 ~0 0.01 0.01 0.01 0 2 force @a[tag=Unusual]
execute at @s[scores={tse_OntimeMSec=4}] run particle dust 0 0 1 1 ~0 ~0 ~0 0.01 0.01 0.01 0 2 force @a[tag=Unusual]
execute at @s[scores={tse_OntimeMSec=5}] run particle dust 1 0 1 1 ~0 ~0 ~0 0.01 0.01 0.01 0 2 force @a[tag=Unusual]