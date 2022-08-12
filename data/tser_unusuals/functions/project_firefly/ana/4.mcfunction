execute unless score @s c.inv.curr matches 1 run advancement revoke @s only tser_unusuals:project_firefly/ana/4 1
execute if score @s c.inv.curr matches 1 run scoreboard objectives add tse.adv.temp dummy [{"text":""}]
execute if score @s c.inv.curr matches 1 as @a[distance=0..128] run scoreboard players add #tse.adv.temp tse.adv.temp 1
execute if score @s c.inv.curr matches 1 if score #tse.adv.temp tse.adv.temp matches 2.. run function tser_unusuals:project_firefly/ana/4_done
execute if score @s c.inv.curr matches 1 unless score #tse.adv.temp tse.adv.temp matches 2.. run advancement revoke @s only tser_unusuals:project_firefly/ana/4 1
execute if score @s c.inv.curr matches 1 run scoreboard objectives remove tse.adv.temp