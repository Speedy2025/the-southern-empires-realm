item modify entity @s weapon.mainhand tse:throwable_fireball/consume

#> This code was made by the kind folks at MCC
# I have made some adjustments as needed

# summon temporary entity "in front of the player", if the player was standing at 0 0 0
tag @s add tse.fbthrower

execute if score @s tse_sneakTime matches 1.. positioned 0.0 0 0.0 in minecraft:overworld run summon area_effect_cloud ^ ^ ^2 {Tags:["direction"]}
execute unless score @s tse_sneakTime matches 1.. positioned 0.0 0 0.0 in minecraft:overworld run summon area_effect_cloud ^ ^ ^0.20 {Tags:["direction"]}

# summon projectile entity
execute unless score @s tse_sneakTime matches 1.. anchored eyes run summon fireball ^ ^-0.5 ^1 {Tags:["projectile"],ExplosionPower:1b}
execute if score @s tse_sneakTime matches 1.. anchored eyes run summon fireball ^ ^-0.5 ^1 {Tags:["projectile"],ExplosionPower:2b}

# copy the aecs position tag to the sheeps motion tag
execute as @e[tag=projectile,limit=1] run function tse:extensions/throwable_fireball/modify

# clean up
tag @e[tag=projectile] remove projectile
kill @e[tag=direction]

tag @a remove tse.fbthrower

advancement revoke @s only tse:technical/throwable_fireball