
#> This code was made by the kind folks at MCC
# I have made some adjustments as needed

# summon temporary entity "in front of the player", if the player was standing at 0 0 0
tag @s add tse.fbthrower

execute if score @s tse_sneakTime matches 1.. positioned 0.0 0 0.0 run summon area_effect_cloud ^ ^ ^0.75 {Tags:["direction"]}
execute unless score @s tse_sneakTime matches 1.. positioned 0.0 0 0.0 run summon area_effect_cloud ^ ^ ^0.20 {Tags:["direction"]}

# summon projectile entity
execute unless score @s tse_sneakTime matches 1.. anchored eyes run summon fireball ^ ^-0.5 ^1 {Tags:["projectile"],ExplosionPower:1}
execute if score @s tse_sneakTime matches 1.. anchored eyes run summon fireball ^ ^-0.5 ^1 {Tags:["projectile"],ExplosionPower:5}

# copy the aecs position tag to the sheeps motion tag
execute as @e[tag=projectile,limit=1] run function tser_main:operations/fireball/modify

# clean up
tag @e[tag=projectile] remove projectile
kill @e[tag=direction]

scoreboard players operation @s tse_fbdelay = @s tse_Ontime
scoreboard players add @s tse_fbdelay 2

tag @a remove tse.fbthrower