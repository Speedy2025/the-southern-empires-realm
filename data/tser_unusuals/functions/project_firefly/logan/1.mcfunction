execute unless score @s c.inv.curr matches 1 run advancement revoke @s only tser_unusuals:project_firefly/logan/1
execute if score @s c.inv.curr matches 1 run scoreboard objectives add tse.adv.temp dummy [{"text":""}]
execute if score @s c.inv.curr matches 1 store result score @s tse.adv.temp run clear @s ancient_debris 0
execute if score @s c.inv.curr matches 1 if score @s tse.adv.temp matches 128.. run advancement revoke @s from tser_unusuals:project_firefly/logan/2
execute if score @s c.inv.curr matches 1 if score @s tse.adv.temp matches 128.. run advancement grant @s only tser_unusuals:project_firefly/logan/2 i
execute if score @s c.inv.curr matches 1 if score @s tse.adv.temp matches 128.. run tellraw @a ["",{"selector":"@s"},{"text":" has made progress on"},{"text":" Logan's Wrath","color":"gold"}]
execute if score @s c.inv.curr matches 1 unless score @s tse.adv.temp matches 128.. run advancement revoke @s from tser_unusuals:project_firefly/logan/1
execute if score @s c.inv.curr matches 1 run scoreboard objectives remove tse.adv.temp