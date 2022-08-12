execute unless score @s c.inv.curr matches 1 run advancement revoke @s only tser_unusuals:project_firefly/angelee/1
execute if score @s c.inv.curr matches 1 run advancement revoke @s from tser_unusuals:project_firefly/angelee/2
execute if score @s c.inv.curr matches 1 run advancement grant @s only tser_unusuals:project_firefly/angelee/2 i
execute if score @s c.inv.curr matches 1 run tellraw @a ["",{"selector":"@s"},{"text":" has made progress on"},{"text":" Angelee's Desolation","color":"gold"}]