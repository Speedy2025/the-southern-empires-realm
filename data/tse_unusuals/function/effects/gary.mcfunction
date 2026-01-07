scoreboard players operation @s tse_OntimeMSec = @s se.ontime
scoreboard players operation @s tse_OntimeMSec %= #const.120 tse_constant
scoreboard players operation @s tse_OntimeMSec /= #const.20 tse_constant
execute at @s[scores={tse_OntimeMSec=0}] run particle dust{color:[1, 0, 0],scale:1} ~0 ~0 ~0 0.01 0.01 0.01 0 2 force @a[tag=Unusual]
execute at @s[scores={tse_OntimeMSec=1}] run particle dust{color:[1, 0.5, 0],scale:1} ~0 ~0 ~0 0.01 0.01 0.01 0 2 force @a[tag=Unusual]
execute at @s[scores={tse_OntimeMSec=2}] run particle dust{color:[1, 1, 0],scale:1} ~0 ~0 ~0 0.01 0.01 0.01 0 2 force @a[tag=Unusual]
execute at @s[scores={tse_OntimeMSec=3}] run particle dust{color:[0, 1, 0],scale:1} ~0 ~0 ~0 0.01 0.01 0.01 0 2 force @a[tag=Unusual]
execute at @s[scores={tse_OntimeMSec=4}] run particle dust{color:[0, 0, 1],scale:1} ~0 ~0 ~0 0.01 0.01 0.01 0 2 force @a[tag=Unusual]
execute at @s[scores={tse_OntimeMSec=5}] run particle dust{color:[1, 0, 1],scale:1} ~0 ~0 ~0 0.01 0.01 0.01 0 2 force @a[tag=Unusual]