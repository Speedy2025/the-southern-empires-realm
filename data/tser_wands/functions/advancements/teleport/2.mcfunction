#If player hasn't stared before, signal for goal update
execute unless score @s tse_endStarePrev matches 1.. run tag @s add tse.temp.goal

#Update current score
scoreboard players operation @s tse_endStareCurr = @s tse_Ontime

#If player has stared before but not constant, signal for goal update
execute unless score @s tse_endStarePrev = @s tse_endStareCurr run tag @s add tse.temp.goal

#If it was signaled to update goal, update it here
execute as @s[tag=tse.temp.goal] run scoreboard players operation @s tse_endStareGoal = @s tse_Ontime
execute as @s[tag=tse.temp.goal] run scoreboard players add @s tse_endStareGoal 600
tag @s remove tse.temp.goal

#Update Previous
scoreboard players operation @s tse_endStarePrev = @s tse_endStareCurr
scoreboard players add @s tse_endStarePrev 1

#Check for completion
execute unless score @s tse_endStareCurr = @s tse_endStareGoal run advancement revoke @s only tser_wands:teleport/2
execute unless score @s c.inv.curr matches 1 run advancement revoke @s only tser_wands:teleport/2
#execute unless score @s tse_endStareCurr = @s tse_endStareGoal run say Nope!
execute if score @s tse_endStareCurr = @s tse_endStareGoal if score @s c.inv.curr matches 1 run advancement grant @s only tser_wands:teleport/4 2
execute if score @s tse_endStareCurr = @s tse_endStareGoal if score @s c.inv.curr matches 1 run tellraw @s [{"text":"Advancement granted... quietly...","color": "gray","italic":true}]
