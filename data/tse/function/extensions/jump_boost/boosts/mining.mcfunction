execute if entity @s[scores={tse_sneakTime=40..},tag=tse.jump.mining] run effect clear @s minecraft:haste
execute if entity @s[scores={tse_sneakTime=40..},tag=tse.jump.mining] run return run tag @s remove tse.jump.mining
effect give @s[scores={tse_sneakTime=..39},tag=tse.jump.mining] minecraft:haste infinite 4 false
tag @s[scores={tse_sneakTime=..39},tag=!tse.jump.mining] add tse.jump.mining