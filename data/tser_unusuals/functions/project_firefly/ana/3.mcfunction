execute unless score @s c.inv.curr matches 1 run advancement revoke @s only tser_unusuals:project_firefly/ana/3 1
execute if score @s c.inv.curr matches 1 run advancement revoke @s from tser_unusuals:project_firefly/ana/4
execute if score @s c.inv.curr matches 1 run advancement grant @s only tser_unusuals:project_firefly/ana/4 i
execute if score @s c.inv.curr matches 1 run tellraw @a ["",{"selector":"@s"},{"text":" has made progress on"},{"text":" Ana's Brilliance","color":"gold"}]
