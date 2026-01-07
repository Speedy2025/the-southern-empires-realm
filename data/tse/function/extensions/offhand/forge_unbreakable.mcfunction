scoreboard players set #tse_ench_forge tse_ench 0
execute store result score #tse_ench_forge tse_ench unless data entity @s SelectedItem.components."minecraft:unbreakable" run data get entity @s SelectedItem.components."minecraft:enchantments"."minecraft:unbreaking"
execute if score #tse_ench_forge tse_ench matches ..74 run return fail

item modify entity @s weapon.mainhand {function:"set_enchantments",enchantments:{unbreaking:0}}
item modify entity @s weapon.mainhand {function:"set_enchantments",enchantments:{mending:0}}
item modify entity @s weapon.mainhand {function:"set_damage",damage:99999999}

data modify storage tse:offhand SelectedItem set value {id:"",components:{},count:1}
data modify storage tse:offhand SelectedItem.id set from entity @s SelectedItem.id
data modify storage tse:offhand SelectedItem.components set from entity @s SelectedItem.components
data modify storage tse:offhand SelectedItem.count set from entity @s SelectedItem.count
item modify entity @s weapon.mainhand [{function: set_components, components: {"minecraft:unbreakable":{}}}]

function tse:extensions/offhand/apply_unbreakable with storage tse:offhand SelectedItem