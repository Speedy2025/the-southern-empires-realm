kill @e[type=snowball,distance=0..2]
execute if score @s tse_fbdelay > @s tse_Ontime run give @s snowball{CustomModelData:1992566} 1
execute if score @s tse_fbdelay <= @s tse_Ontime at @s run function tser_main:operations/fireball/throw