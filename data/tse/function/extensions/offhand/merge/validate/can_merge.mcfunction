####################
# Merge Validation #
####################

# Check if there's an item in offhand.
execute unless data entity @s equipment.offhand.id run tellraw @s ["",{text:"[Offhand Merge]",color:"green"},{text:" You need to supply an item to merge with in your offhand."}]
execute unless data entity @s equipment.offhand.id run return fail

# Check if there's an item in mainhand
execute unless data entity @s SelectedItem.id run tellraw @s ["",{text:"[Offhand Merge]",color:"green"},{text:" You need to supply an item to merge in your mainhand."}]
execute unless data entity @s SelectedItem.id run return fail

# Check if the item is Special (Refuse to Use)
execute if entity @s[predicate=tse:offhand_merge/refuse_enchant] run tellraw @s ["",{text:"[Offhand Merge]",color:"green"},{text:" This merge is prohibited."}]
execute if entity @s[predicate=tse:offhand_merge/refuse_enchant] run return fail

# Check if the item is Different
data modify storage tse:ench id set from entity @s SelectedItem.id
execute store success score #tse_ench_fail tse_ench run data modify storage tse:ench id set from entity @s equipment.offhand.id
execute if score #tse_ench_fail tse_ench matches 1 run tellraw @s ["",{text:"[Offhand Merge]",color:"green"},{text:" You cannot merge items that are different."}]
execute if score #tse_ench_fail tse_ench matches 1 run return fail

# Check if there's any special properties
execute unless data entity @s equipment.offhand.components."minecraft:enchantments" unless data entity @s equipment.offhand.components."minecraft:custom_data"."tse:unusual" unless data entity @s equipment.offhand.components."minecraft:unbreakable" run tellraw @s ["",{text:"[Offhand Merge]",color:"green"},{text:" The offhand item must already be enchanted, be unusual, or be unbreakable."}]
execute unless data entity @s equipment.offhand.components."minecraft:enchantments" unless data entity @s equipment.offhand.components."minecraft:custom_data"."tse:unusual" unless data entity @s equipment.offhand.components."minecraft:unbreakable" run return fail

# CHeck if the player has enough xp
execute store success score #tse_ench_hasxp tse_ench run function tse:extensions/offhand/merge/validate/root
execute if score #tse_ench_hasxp tse_ench matches 0 if score #tse_ench_cost tse_ench matches 1 run tellraw @s ["",{text:"[Offhand Merge]",color:"green"},{text:" This item requires "},{score:{name:"#tse_ench_cost",objective:"tse_ench"},color:"gold"},{text:" levels",color:"gold"}]
execute if score #tse_ench_hasxp tse_ench matches 0 unless score #tse_ench_cost tse_ench matches 1 run tellraw @s ["",{text:"[Offhand Merge]",color:"green"},{text:" This item requires "},{score:{name:"#tse_ench_cost",objective:"tse_ench"},color:"gold"},{text:" levels",color:"gold"}]
execute if score #tse_ench_hasxp tse_ench matches 0 run return fail

# Now report said special property
scoreboard players set #tse_ench_encoded tse_ench 0
execute if data entity @s equipment.offhand.components."minecraft:enchantments" run scoreboard players add #tse_ench_encoded tse_ench 1
execute if data entity @s equipment.offhand.components."minecraft:unbreakable" run scoreboard players add #tse_ench_encoded tse_ench 2
execute if data entity @s equipment.offhand.components."minecraft:custom_data"."tse:unusual" run scoreboard players add #tse_ench_encoded tse_ench 4
return 1