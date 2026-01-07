# Unusuals have a special case.
#       Does the current item have an unusual?
#       If so, refund it.
# Once we've dealt with the special case, we just override it.
#       Thanks to preparation, the unusual block will ALWAYS be part of line 0.
#

# Step 1: Refund if applicable
execute store success score #tse_ench_tmp tse_ench if data entity @s SelectedItem.components."minecraft:custom_data"."tse:unusual"
execute if score #tse_ench_tmp tse_ench matches 1 run function tse:extensions/offhand/merge/apply_aspects/refund_unusual

# Step 2: If they have an unusual, extract lore (special)
#         Otherwise, preserve any lore.
# We are reusing some code from offhand lore.
data remove storage tse:temp val.text
execute if score #tse_ench_tmp tse_ench matches 1 if data entity @s SelectedItem.components."minecraft:lore"[1] run data modify storage tse:temp val.text set from entity @s SelectedItem.components."minecraft:lore"
execute if score #tse_ench_tmp tse_ench matches 0 if data entity @s SelectedItem.components."minecraft:lore"[0] run data modify storage tse:temp val.text set from entity @s SelectedItem.components."minecraft:lore"
execute if score #tse_ench_tmp tse_ench matches 1 run data remove storage tse:temp val.text[0]
data modify storage tse:temp val.flavor set from entity @s equipment.offhand.components."minecraft:lore"[0]

# Now set the lore of the item.
item modify entity @s weapon.mainhand {function:"minecraft:set_lore",entity:"this",lore:[{nbt:"val.flavor",storage:"tse:temp",interpret:1b}],mode:"replace_all"}
execute if data storage tse:temp val.text run item modify entity @s weapon.mainhand {function:"minecraft:set_lore",entity:"this",lore:[""],mode:"append"}
execute if data storage tse:temp val.text run item modify entity @s weapon.mainhand {function:"minecraft:set_lore",entity:"this",lore:[{nbt:"val.text",storage:"tse:temp",interpret:1b}],mode:"append"}

# Step 3: Set the unusual of the item
data modify storage tse:offhand unusual set from entity @s equipment.offhand.components."minecraft:custom_data"
item modify entity @s weapon.mainhand tse:apply_unusual

# We will clear the original item later.

# Step 4: Acknowledge Completion
scoreboard players remove #tse_ench_encoded tse_ench 4