execute store result score #levels tse_xp run xp query @s levels
execute store result score #points tse_xp run xp query @s points

execute if score #levels tse_xp matches 1 if score #points tse_xp matches 1.. run xp add @s -8 points
execute if score #levels tse_xp matches 1 if score #points tse_xp matches 1.. run give @s minecraft:experience_bottle

execute if score #levels tse_xp matches 2.. run xp add @s -8 points
execute if score #levels tse_xp matches 2.. run give @s minecraft:experience_bottle

execute if score #levels tse_xp matches 0 run tellraw @s ["",{text:"[XP]",color:"green"},{text:" Converted your experience to bottles."}]
execute if score #levels tse_xp matches 0 run return 1

execute if score #levels tse_xp matches 1 if score #points tse_xp matches 0 run tellraw @s ["",{text:"[XP]",color:"green"},{text:" Converted your experience to bottles."}]
execute if score #levels tse_xp matches 1 if score #points tse_xp matches 0 run return 1

function tse:extensions/xp_store/start