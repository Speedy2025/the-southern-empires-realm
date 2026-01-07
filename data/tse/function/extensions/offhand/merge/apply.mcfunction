# Assume our success, because we're that amazing
execute unless score #tse_ench_cost tse_ench = #const.1 tse_constant run tellraw @s ["",{text:"[Offhand Merge]",color:"green"},{text:" Successfully enchanted using "},{score:{name:"#tse_ench_cost",objective:"tse_ench"},color:"gold"},{text:" levels",color:"gold"},"."]
execute if score #tse_ench_cost tse_ench = #const.1 tse_constant run tellraw @s ["",{text:"[Offhand Merge]",color:"green"},{text:" Successfully enchanted using "},{text:"1 level",color:"gold"},"."]

# Start by transfering items, in order.
execute if score #tse_ench_encoded tse_ench matches 4.. run function tse:extensions/offhand/merge/apply_aspects/unusual
execute if score #tse_ench_encoded tse_ench matches 2.. run function tse:extensions/offhand/merge/apply_aspects/unbreakable
execute if score #tse_ench_encoded tse_ench matches 1.. run function tse:extensions/offhand/merge/apply_aspects/enchantments

# Clear the original item
function tse:extensions/offhand/merge/apply_aspects/clear_item

# Expend the XP and attempt to forge it into unbreakable.
function tse:extensions/offhand/enchant/xp/remove/root with storage tse:offhand lvls
function tse:extensions/offhand/forge_unbreakable