scoreboard players set #light tse_single 0
execute as @a[tag=LightCheck,scores={c.inv.curr=1..2}] at @s run function tser_sched:light_check/check
execute if score #light tse_single matches 0 if entity @a[tag=LightCheck] run schedule function tser_sched:light_check 1s replace
execute if score #light tse_single matches 0 if entity @a[tag=LightCheck] run scoreboard players set #light tse_single 1
