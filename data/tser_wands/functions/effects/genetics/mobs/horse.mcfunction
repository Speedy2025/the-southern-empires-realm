#Clean up & prime tser_wands:genetics
data modify storage tser_wands:genetics attributes set value []
data modify storage tser_wands:genetics attributes set from entity @s Attributes

#Show the player which was selected (in the case it needs to be random)
effect give @s glowing 2 1 true
#Get Correct Varient
execute if entity @s store result score @s tser.temp run data get entity @s Variant
execute if score @s tser.temp matches 1000.. run function tser_wands:effects/genetics/mobs/variants/1000
execute if score @s tser.temp matches 750..800 run function tser_wands:effects/genetics/mobs/variants/750
execute if score @s tser.temp matches 500..550 run function tser_wands:effects/genetics/mobs/variants/500
execute if score @s tser.temp matches 250..300 run function tser_wands:effects/genetics/mobs/variants/250
execute if score @s tser.temp matches 0..50 run function tser_wands:effects/genetics/mobs/variants/0

#>Calculate Speed & Stick it through Prettifier :D
data modify storage tser_wands:genetics speed set from storage tser_wands:genetics attributes[{Name: "minecraft:generic.movement_speed"}].Base
execute store result storage tser_wands:genetics speed double 0.001 run data get storage tser_wands:genetics attributes[{Name: "minecraft:generic.movement_speed"}].Base 42157.787584

execute store result score #temp1 tser.temp run data get storage tser_wands:genetics speed 100
execute store result score #temp2 tser.temp run data get storage tser_wands:genetics speed 1
scoreboard players operation #temp3 tser.temp = #temp2 tser.temp
scoreboard players operation #temp3 tser.temp *= #se.const.100 se.storage
scoreboard players operation #temp1 tser.temp -= #temp3 tser.temp

tellraw @a[tag=tse.target] ["",{"text":"Speed: ","color":"gold"},{"score":{"name":"#temp2","objective":"tser.temp"}},{"text":"."},{"score":{"name":"#temp1","objective":"tser.temp"}},{"text":" bps"}]


#>Calculate Jump & Stick it through Prettifier :D
execute store result storage tser_wands:genetics jump double 0.01 run data get storage tser_wands:genetics attributes[{Name: "minecraft:horse.jump_strength"}].Base 10000
execute store result score #temp1 tser.temp run data get storage tser_wands:genetics jump
execute store result storage tser_wands:genetics jump double 1.42857143 run scoreboard players remove #temp1 tser.temp 30

#I'd prefer having only a rounded whole number display
execute store result score #temp2 tser.temp run data get storage tser_wands:genetics jump 1

tellraw @a[tag=tse.target] ["",{"text":"Jump Ratio: ","color":"gold"},{"score":{"name":"#temp2","objective":"tser.temp"}},{"text":"%"}]

#>Calculate HP & Stick it through Prettifier :D
execute store result storage tser_wands:genetics hp double 0.1 run data get storage tser_wands:genetics attributes[{Name: "minecraft:generic.max_health"}].Base 5

execute store result score #temp1 tser.temp run data get storage tser_wands:genetics hp 100
execute store result score #temp2 tser.temp run data get storage tser_wands:genetics hp 1
scoreboard players operation #temp3 tser.temp = #temp2 tser.temp
scoreboard players operation #temp3 tser.temp *= #se.const.100 se.storage
scoreboard players operation #temp1 tser.temp -= #temp3 tser.temp
tellraw @a[tag=tse.target] ["",{"text":"Health: ","color":"gold"},{"score":{"name":"#temp2","objective":"tser.temp"}},{"text":"."},{"score":{"name":"#temp1","objective":"tser.temp"}},{"text":" ❤"}]

#scoreboard objectives remove tser.temp
#42.157787584