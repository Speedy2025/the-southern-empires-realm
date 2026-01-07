scoreboard players remove #tse_ench_encoded tse_ench 1

# Set the enchantments
data modify storage tse:offhand val.ench set from entity @s equipment.offhand.components."minecraft:enchantments"
execute store result storage tse:offhand lvls.val int 1 run scoreboard players get #tse_ench_cost tse_ench
function tse:extensions/offhand/merge/apply_aspects/enchantment_final with storage tse:offhand val

# We will clear the enchantments later.
