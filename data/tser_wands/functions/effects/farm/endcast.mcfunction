#Assume a 5*3*5 grid centered on the destination block.


#Till any dirt/grass/course dirt
scoreboard objectives add tse_wand.temp dummy
scoreboard players set @s tse_wand.temp 0

#Shift Functionality - Start with enabling shriekers
execute store result score @s tse_wand.temp if score @s tse_sneakTime matches 1.. run fill ~-4 ~ ~-4 ~4 ~ ~4 sculk_shrieker[can_summon=true] replace minecraft:sculk_shrieker
execute unless score @s tse_wand.temp matches 1.. if score @s tse_sneakTime matches 1.. run fill ~-4 ~ ~-4 ~4 ~ ~4 farmland[moisture=7] replace #tser_wands:tillable

#Harvest Wheat
execute store result score @s tse_wand.temp run fill ~-4 ~-1 ~-4 ~4 ~1 ~4 wheat[age=0] replace wheat[age=7]
execute if score @s tse_wand.temp matches 1.. run function tser_wands:effects/farm/crops/wheat

#Hervest the Beat
execute store result score @s tse_wand.temp run fill ~-4 ~-1 ~-4 ~4 ~1 ~4 beetroots[age=0] replace beetroots[age=3]
execute if score @s tse_wand.temp matches 1.. run function tser_wands:effects/farm/crops/beet

#Harvest those couch potatos
execute store result score @s tse_wand.temp run fill ~-4 ~-1 ~-4 ~4 ~1 ~4 potatoes[age=0] replace potatoes[age=7]
execute if score @s tse_wand.temp matches 1.. run function tser_wands:effects/farm/crops/potato

#Harvest eyeball food?
execute store result score @s tse_wand.temp run fill ~-4 ~-1 ~-4 ~4 ~1 ~4 carrots[age=0] replace carrots[age=7]
execute if score @s tse_wand.temp matches 1.. run function tser_wands:effects/farm/crops/carrot

#Get peed on by frogs and harvest said wart
execute store result score @s tse_wand.temp run fill ~-4 ~-1 ~-4 ~4 ~1 ~4 nether_wart[age=0] replace nether_wart[age=3]
execute if score @s tse_wand.temp matches 1.. run function tser_wands:effects/farm/crops/nether_wart




scoreboard objectives remove tse_wand.temp