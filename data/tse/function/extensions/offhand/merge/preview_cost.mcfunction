# Throw Error Messages
execute unless function tse:extensions/offhand/merge/validate/can_merge run return fail

function tse:extensions/offhand/merge/validate/root
execute if score #tse_ench_cost tse_ench matches 1 run tellraw @s ["",{text:"[Offhand Merge]",color:"green"},{text:" This item will cost "},{score:{name:"#tse_ench_cost",objective:"tse_ench"},color:"gold"},{text:" levels",color:"gold"}]
execute unless score #tse_ench_cost tse_ench matches 1 run tellraw @s ["",{text:"[Offhand Merge]",color:"green"},{text:" This item will cost "},{score:{name:"#tse_ench_cost",objective:"tse_ench"},color:"gold"},{text:" levels",color:"gold"}]

