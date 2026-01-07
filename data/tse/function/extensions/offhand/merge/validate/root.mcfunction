data remove storage tse:offhand destination
data remove storage tse:offhand source
data remove storage tse:offhand item

scoreboard players set #tse_ench_cost tse_ench 0

# Step 1: Transport the item to safety.
data modify storage tse:offhand destination set from entity @s SelectedItem
data modify storage tse:offhand source set from entity @s equipment.offhand

# Step 2: If there's any enchantments, set the cost to 2 and count them.
execute if data storage tse:offhand destination.components.minecraft:enchantments run function tse:extensions/offhand/merge/validate/scan_item
data modify storage tse:offhand item.ench set from storage tse:offhand source.components.minecraft:enchantments


# Step 1: Transport the item to safety.
function tse:extensions/offhand/merge/purge_invalid
data modify storage tse:offhand destination set from entity @s equipment.offhand

# Step 2: If there's any enchantments, set the cost to 2 and count them.
execute if data storage tse:offhand destination.components.minecraft:enchantments run function tse:extensions/offhand/merge/validate/scan_item

# Step 3: Adjust Cost to meet constraints (80% of total and >=10)
scoreboard players operation #tse_ench_cost tse_ench *= #const.2 tse_constant
scoreboard players operation #tse_ench_cost tse_ench /= #const.3 tse_constant
execute if score #tse_ench_cost tse_ench matches ..10 run scoreboard players set #tse_ench_cost tse_ench 10

execute store result score #tse_ench_lvl tse_ench run xp query @s levels
execute if predicate tse:offhand_enchant/has_xp run return 1
return fail