# Goal: Determine the cost and if players have enough for it.

data remove storage tse:offhand destinatino
data remove storage tse:offhand source
data remove storage tse:offhand lvls.val

# Step 1: Transport the item to safety.
data modify storage tse:offhand destination set from entity @s SelectedItem
data modify storage tse:offhand source set from entity @s equipment.offhand

# Step 2: If there's any enchantments, set the cost to 2 and count them.
#         Otherwise, set the cost to 2. Flat.
scoreboard players set #tse_ench_cost tse_ench 5
execute if data storage tse:offhand destination.components.minecraft:enchantments run function tse:extensions/offhand/enchant/xp/validate/scan_item
data modify storage tse:offhand item.ench set from storage tse:offhand source.components.minecraft:stored_enchantments

execute store result score #tse_ench_lvl tse_ench run xp query @s levels
execute if predicate tse:offhand_enchant/has_xp run return 1

execute if score #tse_ench_cost tse_ench matches 1 run tellraw @s ["",{text:"[Offhand Enchant]",color:"green"},{text:" You require "},{text:"1 level",color:"gold"},{text:" to merge these items."}]
execute unless score #tse_ench_cost tse_ench matches 1 run tellraw @s ["",{text:"[Offhand Enchant]",color:"green"},{text:" You require "},{score:{name:"#tse_ench_cost",objective:"tse_ench"},color:"gold"},{text:" levels",color:"gold"},{text:" to merge these items."}]

return fail