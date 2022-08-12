

scoreboard objectives add tser.temp dummy

execute if entity @s[type=minecraft:horse] run function tser_wands:effects/genetics/mobs/horse
execute if entity @s[type=minecraft:donkey] run function tser_wands:effects/genetics/mobs/donkey
execute if entity @s[type=minecraft:mule] run function tser_wands:effects/genetics/mobs/mule
execute if entity @s[type=minecraft:skeleton_horse] run function tser_wands:effects/genetics/mobs/skeleton_horse
execute if entity @s[type=minecraft:zombie_horse] run function tser_wands:effects/genetics/mobs/zombie_horse
execute if entity @s[type=minecraft:goat] run function tser_wands:effects/genetics/mobs/goat
execute if entity @s[type=minecraft:panda] run function tser_wands:effects/genetics/mobs/panda
execute if entity @s[type=minecraft:villager] run function tser_wands:effects/genetics/mobs/villager
execute if entity @s[type=minecraft:frog] run function tser_wands:effects/genetics/mobs/frog


scoreboard objectives remove tser.temp
scoreboard players set @a[tag=tse.target] tse_raylength 0