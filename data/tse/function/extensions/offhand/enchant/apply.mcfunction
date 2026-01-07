execute unless score #tse_ench_cost tse_ench = #const.1 tse_constant run tellraw @s ["",{text:"[Offhand Enchant]",color:"green"},{text:" Successfully enchanted using "},{score:{name:"#tse_ench_cost",objective:"tse_ench"},color:"gold"},{text:" levels",color:"gold"},"."]
execute if score #tse_ench_cost tse_ench = #const.1 tse_constant run tellraw @s ["",{text:"[Offhand Enchant]",color:"green"},{text:" Successfully enchanted using "},{text:"1 level",color:"gold"},"."]
execute store result storage tse:offhand lvls.val int 1 run scoreboard players get #tse_ench_cost tse_ench
$item modify entity @s weapon.mainhand {"function":"minecraft:set_enchantments","enchantments":$(ench),"add":true}
function tse:extensions/offhand/enchant/xp/remove/root with storage tse:offhand lvls
item replace entity @s weapon.offhand with book

function tse:extensions/offhand/forge_unbreakable