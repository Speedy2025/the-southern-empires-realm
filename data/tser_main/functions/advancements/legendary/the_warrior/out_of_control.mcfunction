# Goal: Detect a tnt minecart within 2 block of the player & detect if there are 100 tnt minecarts in that block where it's at.

scoreboard objectives add tse.adv.temp dummy
scoreboard players set #minecart tse.adv.temp 0
execute if score @s[advancements={tser_main:legendary_series/trial_by_fire=true}] c.inv.curr matches 1 as @e[type=tnt_minecart,distance=0..2,limit=1,sort=nearest] at @s as @e[type=tnt_minecart,distance=0..0.5] run scoreboard players add #minecart tse.adv.temp 1
execute if score #minecart tse.adv.temp matches 100.. run function tser_main:advancements/legendary/the_warrior/out_of_control_2
execute unless score #minecart tse.adv.temp matches 100.. run advancement revoke @s only tser_main:legendary_series/the_warrior/out_of_control
scoreboard objectives remove tse.adv.temp