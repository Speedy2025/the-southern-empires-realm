scoreboard players operation @s tse_OntimeMSec = @s tse_OntimeSecond
scoreboard players operation @s tse_OntimeMSec %= 3 tse_constant
execute as @s at @s if score @s tse_OntimeMSec matches 0 run function tser_unusuals:effects/sam_tree/zero
execute as @s at @s if score @s tse_OntimeMSec matches 1 run function tser_unusuals:effects/sam_tree/one
execute as @s at @s if score @s tse_OntimeMSec matches 2 run function tser_unusuals:effects/sam_tree/two